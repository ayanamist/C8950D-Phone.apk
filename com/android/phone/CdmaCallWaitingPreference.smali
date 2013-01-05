.class public Lcom/android/phone/CdmaCallWaitingPreference;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallWaitingPreference.java"


# static fields
.field public static final BUTTON_CW_OFF_KEY:Ljava/lang/String; = "button_cdma_cw_off_key"

.field public static final BUTTON_CW_ON_KEY:Ljava/lang/String; = "button_cdma_cw_on_key"


# instance fields
.field private mButtonCwOff:Landroid/preference/Preference;

.field private mButtonCwOn:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private dialFc(Ljava/lang/String;)V
    .registers 6
    .parameter "featureCode"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    :goto_6
    return-void

    .line 69
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 75
    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private showErrorDialog()V
    .registers 4

    .prologue
    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c032e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 85
    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v1, 0x7f0c00a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "button_cdma_cw_on_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOn:Landroid/preference/Preference;

    .line 40
    const-string v0, "button_cdma_cw_off_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOff:Landroid/preference/Preference;

    .line 41
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOn:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1d

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 47
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingPreference;->showErrorDialog()V

    .line 62
    :cond_11
    :goto_11
    return v0

    .line 50
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->dialFc(Ljava/lang/String;)V

    move v0, v1

    .line 51
    goto :goto_11

    .line 53
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingPreference;->mButtonCwOff:Landroid/preference/Preference;

    if-ne p2, v2, :cond_11

    .line 54
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 55
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingPreference;->showErrorDialog()V

    goto :goto_11

    .line 58
    :cond_2d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingPreference;->dialFc(Ljava/lang/String;)V

    move v0, v1

    .line 59
    goto :goto_11
.end method
