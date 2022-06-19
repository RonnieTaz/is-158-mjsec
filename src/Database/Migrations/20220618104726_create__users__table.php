<?php

declare(strict_types=1);

use Phoenix\Database\Element\Column;
use Phoenix\Database\Element\ColumnSettings;
use Phoenix\Exception\InvalidArgumentValueException;
use Phoenix\Migration\AbstractMigration;

final class create_users_table extends AbstractMigration
{
    /**
     * @throws InvalidArgumentValueException
     */
    protected function up(): void
    {
        $this->table('users', true, 'utf8', 'utf8_unicode_ci')
            ->addColumn('first_name', Column::TYPE_STRING)
            ->addColumn('middle_name', Column::TYPE_STRING, [
                ColumnSettings::SETTING_NULL => true
            ])->addColumn('last_name', Column::TYPE_STRING)
            ->addColumn('dob', Column::TYPE_DATE)
            ->addColumn('username', Column::TYPE_STRING)
            ->addColumn('email', Column::TYPE_STRING, [
                ColumnSettings::SETTING_NULL => true
            ])->addColumn('password', Column::TYPE_STRING)
            ->addColumn('cv', Column::TYPE_STRING)
            ->addColumn('contacts', Column::TYPE_JSON)
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
        $this->table('users')
            ->drop();
    }
}
