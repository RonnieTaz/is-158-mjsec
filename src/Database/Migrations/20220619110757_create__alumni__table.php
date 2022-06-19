<?php

declare(strict_types=1);

use Phoenix\Database\Element\Column;
use Phoenix\Database\Element\ColumnSettings;
use Phoenix\Exception\InvalidArgumentValueException;
use Phoenix\Migration\AbstractMigration;

final class Create_alumni_table extends AbstractMigration
{
    /**
     * @throws InvalidArgumentValueException
     */
    protected function up(): void
    {
        $this->table('alumni', true, 'utf8', 'utf8_unicode_ci')
            ->addColumn('name', Column::TYPE_STRING, [
                ColumnSettings::SETTING_LENGTH => 30
            ])->addColumn('enrollment_year', Column::TYPE_STRING, [
                ColumnSettings::SETTING_LENGTH => 9
            ])->addColumn('graduation_year', Column::TYPE_STRING, [
                ColumnSettings::SETTING_LENGTH => 9
            ])->addColumn('headmaster', Column::TYPE_STRING)
            ->addColumn('famous_teacher', Column::TYPE_STRING, [
                ColumnSettings::SETTING_LENGTH => 30
            ])->addColumn('email', Column::TYPE_STRING)
            ->addColumn('results', Column::TYPE_STRING)
            ->addColumn('occupation', Column::TYPE_STRING, [
                ColumnSettings::SETTING_LENGTH => 20
            ])
            ->addColumn('address', Column::TYPE_STRING)
            ->addColumn('phone_number', Column::TYPE_STRING)
            ->addColumn('created_at', Column::TYPE_TIMESTAMP, [
                ColumnSettings::SETTING_DEFAULT => ColumnSettings::DEFAULT_VALUE_CURRENT_TIMESTAMP
            ])->addColumn('updated_at', Column::TYPE_TIMESTAMP, [
                ColumnSettings::SETTING_DEFAULT => ColumnSettings::DEFAULT_VALUE_CURRENT_TIMESTAMP
            ])->addColumn('deleted_at', Column::TYPE_TIMESTAMP, [
                ColumnSettings::SETTING_NULL => true
            ])->create();
    }

    protected function down(): void
    {
        $this->table('alumni')
            ->drop();
    }
}
