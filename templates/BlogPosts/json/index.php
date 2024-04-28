<?php

/**
 * @var \App\View\AppView $this
 * @var iterable<\App\Model\Entity\BlogPost> $blogPosts
 */

foreach ($blogPosts as $blogPost) {
    unset($blogPost->modified);
    $blogPost->customNow = new DateTime('now', new DateTimeZone('Europe/Berlin'));
}
echo json_encode(compact('blogPosts'));