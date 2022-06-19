<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.authenticate.php
 * Type:     function
 * Name:     authenticate
 * Purpose:  checks if a user is authenticated
 * -------------------------------------------------------------
 */
function smarty_function_authenticate($params, Smarty_Internal_Template $template): bool
{
    return auth(session(), $params['id']);
}