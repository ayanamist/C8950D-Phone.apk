.class public Lcom/android/phone/MSimNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimNetworkSettings$1;,
        Lcom/android/phone/MSimNetworkSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MSimNetworkSettings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final iface:Ljava/lang/String; = "rmnet0"

.field static final preferredNetworkMode:I


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 269
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    const v1, 0x7f0c03ec

    .line 379
    packed-switch p1, :pswitch_data_88

    .line 438
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 441
    :goto_b
    return-void

    .line 381
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 385
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 389
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 393
    :pswitch_27
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 397
    :pswitch_30
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 404
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 399
    :pswitch_42
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 410
    :pswitch_4b
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 414
    :pswitch_54
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 418
    :pswitch_5d
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c03e9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 422
    :pswitch_66
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c03ea

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 426
    :pswitch_6f
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c03eb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 430
    :pswitch_78
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 434
    :pswitch_7e
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0c03e8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_b

    .line 379
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_4b
        :pswitch_54
        :pswitch_7e
        :pswitch_6f
        :pswitch_66
        :pswitch_78
        :pswitch_5d
    .end packed-switch

    .line 397
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimNetworkSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MSimNetworkSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/MSimNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimNetworkSettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MSimNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getPreferredNetworkMode()I
    .registers 6

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v0

    .line 257
    .local v0, nwMode:I
    :goto_12
    return v0

    .line 253
    .end local v0           #nwMode:I
    :catch_13
    move-exception v1

    .line 254
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2}, Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .restart local v0       #nwMode:I
    goto :goto_12
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 463
    const-string v0, "MSimNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .registers 5
    .parameter "nwMode"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 266
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 267
    :cond_1a
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_1e

    .line 460
    :cond_3
    :goto_3
    return-void

    .line 447
    :pswitch_4
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 449
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_3

    .line 445
    nop

    :pswitch_data_1e
    .packed-switch 0x11
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 117
    .local v0, app:Lcom/android/phone/PhoneApp;
    const v5, 0x7f05001c

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimNetworkSettings;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "subscription"

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings onCreate subscription ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MSimNetworkSettings;->log(Ljava/lang/String;)V

    .line 121
    iget v5, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    new-instance v5, Lcom/android/phone/MSimNetworkSettings$MyHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/phone/MSimNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MSimNetworkSettings;Lcom/android/phone/MSimNetworkSettings$1;)V

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 127
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "preferred_network_mode_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 130
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v6, :cond_79

    move v1, v6

    .line 131
    .local v1, isLteOnCdma:Z
    :goto_5e
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v6, :cond_ac

    .line 132
    const-string v5, "ro.monkey"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 133
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_78
    :goto_78
    return-void

    .end local v1           #isLteOnCdma:Z
    :cond_79
    move v1, v7

    .line 130
    goto :goto_5e

    .line 137
    .restart local v1       #isLteOnCdma:Z
    :cond_7b
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 143
    .local v4, settingsNetworkMode:I
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    new-instance v5, Lcom/android/phone/MSimCdmaOptions;

    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v5, p0, v3, v6}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 146
    new-instance v5, Lcom/android/phone/MSimGsmUmtsOptions;

    iget v6, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-direct {v5, p0, v3, v6}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    goto :goto_78

    .line 150
    .end local v4           #settingsNetworkMode:I
    :cond_ac
    if-nez v1, :cond_b3

    .line 151
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_b3
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 154
    .local v2, phoneType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_f6

    .line 156
    new-instance v5, Lcom/android/phone/MSimCdmaOptions;

    iget-object v6, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v5, p0, v3, v6}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 158
    if-eqz v1, :cond_78

    .line 159
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 162
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 164
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 168
    .restart local v4       #settingsNetworkMode:I
    iget-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_78

    .line 172
    .end local v4           #settingsNetworkMode:I
    :cond_f6
    if-ne v2, v6, :cond_103

    .line 174
    new-instance v5, Lcom/android/phone/MSimGsmUmtsOptions;

    iget v6, p0, Lcom/android/phone/MSimNetworkSettings;->mSubscription:I

    invoke-direct {v5, p0, v3, v6}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v5, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    goto/16 :goto_78

    .line 177
    :cond_103
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 200
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 211
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_29

    .line 214
    iget-object v4, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 216
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    .local v0, buttonNetworkMode:I
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v2

    .line 218
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_29

    .line 219
    move v1, v0

    .line 221
    .local v1, modemNetworkMode:I
    if-ltz v1, :cond_24

    if-le v1, v6, :cond_25

    .line 223
    :cond_24
    const/4 v1, 0x0

    .line 229
    :cond_25
    if-nez v1, :cond_2a

    if-ne v2, v6, :cond_2a

    .line 243
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_29
    :goto_29
    return v5

    .line 234
    .restart local v0       #buttonNetworkMode:I
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/phone/MSimNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 235
    invoke-direct {p0, v0}, Lcom/android/phone/MSimNetworkSettings;->setPreferredNetworkMode(I)V

    .line 237
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_29
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_f

    .line 108
    :cond_e
    :goto_e
    return v1

    .line 84
    :cond_f
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v3, p2}, Lcom/android/phone/MSimCdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v3

    if-ne v3, v1, :cond_37

    .line 86
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 89
    iput-object p2, p0, Lcom/android/phone/MSimNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MSimNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 97
    :cond_37
    iget-object v3, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_49

    .line 99
    invoke-direct {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferredNetworkMode()I

    move-result v0

    .line 100
    .local v0, settingsNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/MSimNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_e

    .line 106
    .end local v0           #settingsNetworkMode:I
    :cond_49
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v1, v2

    .line 108
    goto :goto_e
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 191
    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/MSimNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 192
    iget-object v0, p0, Lcom/android/phone/MSimNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimNetworkSettings;->mHandler:Lcom/android/phone/MSimNetworkSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 195
    :cond_2c
    return-void
.end method
