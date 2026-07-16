<?php
declare(strict_types=1);

// RestCountries SDK base feature

class RestCountriesBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(RestCountriesContext $ctx, array $options): void {}
    public function PostConstruct(RestCountriesContext $ctx): void {}
    public function PostConstructEntity(RestCountriesContext $ctx): void {}
    public function SetData(RestCountriesContext $ctx): void {}
    public function GetData(RestCountriesContext $ctx): void {}
    public function GetMatch(RestCountriesContext $ctx): void {}
    public function SetMatch(RestCountriesContext $ctx): void {}
    public function PrePoint(RestCountriesContext $ctx): void {}
    public function PreSpec(RestCountriesContext $ctx): void {}
    public function PreRequest(RestCountriesContext $ctx): void {}
    public function PreResponse(RestCountriesContext $ctx): void {}
    public function PreResult(RestCountriesContext $ctx): void {}
    public function PreDone(RestCountriesContext $ctx): void {}
    public function PreUnexpected(RestCountriesContext $ctx): void {}
}
