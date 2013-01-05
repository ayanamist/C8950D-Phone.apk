.class public Lcom/android/phone/CdmaCallForwardSettings;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardSettings.java"


# static fields
.field public static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cdma_cfb_key"

.field public static final BUTTON_CFNCA_KEY:Ljava/lang/String; = "button_cdma_cfca_key"

.field public static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cdma_cfnrc_key"

.field public static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cdma_cfnry_key"

.field public static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cdma_cfu_key"

.field public static final CF_DIALOG_TITLE_ID:Ljava/lang/String; = "cf_dialog_title_id"

.field public static final CF_KEY:Ljava/lang/String; = "cf_selection"


# instance fields
.field private mButtonCFB:Landroid/preference/Preference;

.field private mButtonCFCa:Landroid/preference/Preference;

.field private mButtonCFNRc:Landroid/preference/Preference;

.field private mButtonCFNRy:Landroid/preference/Preference;

.field private mButtonCFU:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private showCFOptions(I)V
    .registers 4
    .parameter "dialogTitleId"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CdmaCallForwardOptions;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const-string v1, "cf_dialog_title_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "button_cdma_cfu_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFU:Landroid/preference/Preference;

    .line 46
    const-string v0, "button_cdma_cfb_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFB:Landroid/preference/Preference;

    .line 47
    const-string v0, "button_cdma_cfnry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFNRy:Landroid/preference/Preference;

    .line 48
    const-string v0, "button_cdma_cfnrc_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFNRc:Landroid/preference/Preference;

    .line 49
    const-string v0, "button_cdma_cfca_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFCa:Landroid/preference/Preference;

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFU:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 55
    const v2, 0x7f0c0082

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardSettings;->showCFOptions(I)V

    .line 88
    :goto_d
    return v1

    .line 57
    :cond_e
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFB:Landroid/preference/Preference;

    if-ne p2, v3, :cond_19

    .line 58
    const v2, 0x7f0c0088

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardSettings;->showCFOptions(I)V

    goto :goto_d

    .line 60
    :cond_19
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFNRy:Landroid/preference/Preference;

    if-ne p2, v3, :cond_24

    .line 61
    const v2, 0x7f0c008e

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardSettings;->showCFOptions(I)V

    goto :goto_d

    .line 63
    :cond_24
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFNRc:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2f

    .line 64
    const v2, 0x7f0c0093

    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardSettings;->showCFOptions(I)V

    goto :goto_d

    .line 66
    :cond_2f
    iget-object v3, p0, Lcom/android/phone/CdmaCallForwardSettings;->mButtonCFCa:Landroid/preference/Preference;

    if-ne p2, v3, :cond_89

    .line 67
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    if-nez v3, :cond_5e

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0098

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c032e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c00a3

    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v2

    .line 72
    goto :goto_d

    .line 75
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 82
    const-string v3, "subscription"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :cond_85
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .end local v0           #intent:Landroid/content/Intent;
    :cond_89
    move v1, v2

    .line 88
    goto :goto_d
.end method
