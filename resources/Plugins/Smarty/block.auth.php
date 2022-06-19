<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     block.auth.php
 * Type:     block
 * Name:     auth
 * Purpose:  renders based on checking if a user is authenticated
 * -------------------------------------------------------------
 */
function smarty_block_auth($params, $content, Smarty_Internal_Template $template, &$repeat)
{
    // only output on the closing tag
    if(!$repeat){
        if (isset($content) && auth(session(), $params['id'])) {
            return $content;
        }
    }
}