Add-PsSnapin Microsoft.SharePoint.PowerShell -ea SilentlyContinue;

$Template = "STS#0";
$URL = "https://intranet.sharepoint2013.com/sites/WithGroups";
$Owner = "GEEKTRAINER\charrison";
$Name = "Sample Site";
$Description = "Sample Site";

$site = New-SPSite $URL -OwnerAlias $Owner -Language 1033 `
    -Template $Template -Name $Name -Description $Description;

#Create the default groups
$site.RootWeb.CreateDefaultAssociatedGroups($Owner, "", $SiteName);
$site.RootWeb.Update();