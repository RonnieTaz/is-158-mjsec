<?php

namespace App\Core;

use Exception;
use Smarty;
use SmartyException;

class View
{
    public Smarty $engine;

    public function __construct()
    {
        $this->engine = new Smarty();
        $this->engine->setTemplateDir(dirname(__DIR__, 2) . '/resources/Views')
            ->setCacheDir(dirname(__DIR__, 2) . '/storage/Cache/View')
            ->setCompileDir(dirname(__DIR__, 2) . '/storage/build')
            ->addPluginsDir(dirname(__DIR__, 2) . '/resources/Plugins/Smarty');
    }

    /**
     */
    public function render(string $template, array $variables = []): bool|string
    {
        foreach ($variables as $key => $variable) {
            $this->engine->assign($key, $variable);
        }

        $this->engine->assign('id', session()->get('user_id'));
        $this->engine->assign('name', session()->get('user_name'));

        try {
            return $this->engine->fetch($template);
        } catch (SmartyException|Exception $e) {
            return "Failed to load view: {$e->getMessage()}";
        }
    }
}