<?php


namespace Webidea24NewsletterRequiredFields;


use Enlight_Event_EventArgs;
use Shopware\Components\Plugin;

class Webidea24NewsletterRequiredFields extends Plugin
{

    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Controller_Action_PreDispatch' => 'registerTemplates'
        ];
    }

    public function registerTemplates(Enlight_Event_EventArgs $args)
    {
        Shopware()->Template()->addTemplateDir($this->getPath() . '/Resources/views');
    }

}
