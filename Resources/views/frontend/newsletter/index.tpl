{extends file="parent:frontend/newsletter/index.tpl"}


{* Salutation *}
{block name="frontend_newsletter_form_input_salutation"}
    {assign var=isSalutationRequired value={config name="Webidea24NewsletterRequiredFields::salutationRequired"}}
    <div class="newsletter--salutation select-field">
        <select name="salutation" class="field--select{if $sStatus.sErrorFlag.salutation} has--error{/if}{if $isSalutationRequired} is--required{/if}"{if $isSalutationRequired} required="required" aria-required="true"{/if}>
            <option value=""{if $smarty.post.salutation eq ""} selected="selected"{/if}>{s name='NewsletterRegisterPlaceholderSalutation'}{/s}{if $isSalutationRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}</option>
            {foreach $salutations as $key => $label}
                <option value="{$key}"{if $smarty.post.salutation eq $key} selected="selected"{/if}>{$label}</option>
            {/foreach}
        </select>
    </div>
{/block}

{* Firstname *}
{block name="frontend_newsletter_form_input_firstname"}
    {assign var=isFirstnameRequired value={config name="Webidea24NewsletterRequiredFields::firstnameRequired"}}
    <div class="newsletter--firstname">
        <input name="firstname"
               type="text"
               placeholder="{s name="NewsletterRegisterPlaceholderFirstname"}{/s}{if $isFirstnameRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
               value="{$smarty.post.firstname|escape}"
               class="input--field{if $sStatus.sErrorFlag.firstname} has--error{/if}{if $isFirstnameRequired} is--required{/if}"
               {if $isFirstnameRequired} required="required" aria-required="true"{/if}
        />
    </div>
{/block}

{* Lastname *}
{block name="frontend_newsletter_form_input_lastname"}
    {assign var=isLastnameRequired value={config name="Webidea24NewsletterRequiredFields::lastnameRequired"}}
    <div class="newsletter--lastname">
        <input name="lastname"
               type="text"
               placeholder="{s name="NewsletterRegisterPlaceholderLastname"}{/s}{if $isLastnameRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
               value="{$smarty.post.lastname|escape}"
               class="input--field{if $sStatus.sErrorFlag.lastname} has--error{/if}{if $isLastnameRequired} is--required{/if}"
                {if $isLastnameRequired} required="required" aria-required="true"{/if}
        />
    </div>
{/block}

{* Street *}
{block name="frontend_newsletter_form_input_street"}
    {assign var=isStreetRequired value={config name="Webidea24NewsletterRequiredFields::streetRequired"}}
    <div class="newsletter--street">
        <input name="street"
               type="text"
               placeholder="{s name="NewsletterRegisterBillingPlaceholderStreet"}{/s}{if $isStreetRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
               value="{$smarty.post.street|escape}"
               class="input--field{if $sStatus.sErrorFlag.street} has--error{/if}{if $isStreetRequired} is--required{/if}"
                {if $isStreetRequired} required="required" aria-required="true"{/if}
        />
    </div>
{/block}

{* Zip + City *}
{block name="frontend_newsletter_form_input_zip_and_city"}
    {assign var=isCityRequired value={config name="Webidea24NewsletterRequiredFields::cityRequired"}}
    <div class="newsletter--zip-city">
        {if {config name=showZipBeforeCity}}
            <input name="zipcode"
                   type="text"
                   placeholder="{s name="NewsletterRegisterBillingPlaceholderZipcode"}{/s}{if $isCityRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                   value="{$smarty.post.zipcode|escape}"
                   class="input--field input--field-zipcode input--spacer{if $sStatus.sErrorFlag.zipcode} has--error{/if}{if $isCityRequired} is--required{/if}"
                    {if $isCityRequired} required="required" aria-required="true"{/if}
            />

            <input name="city"
                   type="text"
                   placeholder="{s name="NewsletterRegisterBillingPlaceholderCityname"}{/s}{if $isCityRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                   value="{$smarty.post.city|escape}"
                   class="input--field input--field-city{if $sStatus.sErrorFlag.city} has--error{/if}{if $isCityRequired} is--required{/if}"
                    {if $isCityRequired} required="required" aria-required="true"{/if}
            />

        {else}
            <input name="city"
                   type="text"
                   placeholder="{s name="NewsletterRegisterBillingPlaceholderCityname"}{/s}{if $isCityRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                   value="{$smarty.post.city|escape}"
                   class="input--field input--field-city input--spacer{if $sStatus.sErrorFlag.city} has--error{/if}{if $isCityRequired} is--required{/if}"
                    {if $isCityRequired} required="required" aria-required="true"{/if}
            />
            <input name="zipcode"
                   type="text"
                   placeholder="{s name="NewsletterRegisterBillingPlaceholderZipcode"}{/s}{if $isCityRequired}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                   value="{$smarty.post.zipcode|escape}"
                   class="input--field input--field-zipcode{if $sStatus.sErrorFlag.zipcode} has--error{/if}{if $isCityRequired} is--required{/if}"
                    {if $isCityRequired} required="required" aria-required="true"{/if}
            />
        {/if}
    </div>
{/block}
