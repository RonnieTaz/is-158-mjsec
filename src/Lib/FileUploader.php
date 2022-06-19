<?php

namespace App\Core;

use JetBrains\PhpStorm\Pure;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\String\Slugger\AsciiSlugger;
use Symfony\Component\String\Slugger\SluggerInterface;

class FileUploader
{
    private $targetDirectory;
    private SluggerInterface $slugger;

    #[Pure] public function __construct($targetDirectory, ?SluggerInterface $slugger = null)
    {
        $this->targetDirectory = $targetDirectory;
        $this->slugger = $slugger ?? new AsciiSlugger();
    }

    /**
     * @param UploadedFile $file
     * @return string
     * @throws FileException
     */
    public function upload(UploadedFile $file): string
    {
        $originalFilename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
        $safeFilename = $this->slugger->slug($originalFilename);
        $fileName = $safeFilename . '-' . uniqid() . '_' . time() . '.' . $file->guessExtension();

        $file->move($this->getTargetDirectory(), $fileName);

        return $fileName;
    }

    public function getTargetDirectory()
    {
        return $this->targetDirectory;
    }

    public function getExtension(UploadedFile $file): ?string
    {
        return $file->guessExtension();
    }
}