<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * MetaFieldsFixture
 */
class MetaFieldsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'meta_key' => 'Lorem ipsum dolor sit amet',
                'meta_value' => 'Lorem ipsum dolor sit amet',
                'blog_post_id' => 1,
                'created' => '2024-04-15 12:13:03',
                'modified' => '2024-04-15 12:13:03',
            ],
        ];
        parent::init();
    }
}
