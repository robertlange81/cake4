<?php
declare(strict_types=1);

use Migrations\AbstractMigration;

class Test extends AbstractMigration
{
    /**
     * Change Method.
     *
     * More information on this method is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-change-method
     * @return void
     */
    public function change(): void
    {
        $testTable = $this->table("test");
        $testTable->addColumn('name', 'string');
        $testTable->create();

        // $this->execute('DELETE FROM blog_posts');
    }
}
