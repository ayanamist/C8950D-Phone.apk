.class public Lcom/android/phone/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipEditor$4;,
        Lcom/android/phone/sip/SipEditor$AdvancedSettings;,
        Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;,
        Lcom/android/phone/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final GET_METHOD_PREFIX:Ljava/lang/String; = "get"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final MENU_DISCARD:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field private static final NA:I = 0x0

.field private static final SCRAMBLED:C = '*'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 590
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipEditor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method private checkIfDisplayNameSet()V
    .registers 5

    .prologue
    .line 529
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    .line 532
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName set? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_41

    .line 534
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    :goto_3e
    return-void

    .line 530
    :cond_3f
    const/4 v1, 0x0

    goto :goto_17

    .line 536
    :cond_41
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 263
    if-nez p1, :cond_3

    .line 266
    :goto_2
    return-void

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 265
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 541
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .registers 8
    .parameter "pref"

    .prologue
    .line 458
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 459
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_f

    return-object v2

    .line 458
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 461
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_12
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .registers 4

    .prologue
    .line 506
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 508
    .local v0, pref:Landroid/preference/ListPreference;
    const v1, 0x7f0c028c

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z
    .registers 5
    .parameter "key"

    .prologue
    .line 309
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 310
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .registers 13
    .parameter "p"

    .prologue
    .line 465
    if-eqz p1, :cond_8f

    .line 466
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Edit the existing profile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_1e
    const-class v6, Landroid/net/sip/SipProfile;

    .line 469
    .local v6, profileClass:Ljava/lang/Class;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_26
    if-ge v2, v4, :cond_8b

    aget-object v3, v0, v2

    .line 470
    .local v3, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v9}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 472
    .local v5, meth:Ljava/lang/reflect/Method;
    sget-object v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v3, v8, :cond_6e

    .line 473
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 475
    .local v7, value:Z
    if-eqz v7, :cond_6a

    const v8, 0x7f0c028c

    :goto_60
    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 469
    .end local v7           #value:Z
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 475
    .restart local v7       #value:Z
    :cond_6a
    const v8, 0x7f0c028b

    goto :goto_60

    .line 479
    .end local v7           #value:Z
    :cond_6e
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 480
    .local v7, value:Ljava/lang/Object;
    if-nez v7, :cond_86

    const-string v8, ""

    :goto_79
    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_7c} :catch_7d

    goto :goto_67

    .line 484
    .end local v0           #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2           #i$:I
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #len$:I
    .end local v5           #meth:Ljava/lang/reflect/Method;
    .end local v6           #profileClass:Ljava/lang/Class;
    .end local v7           #value:Ljava/lang/Object;
    :catch_7d
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Can not load pref from profile"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v1           #e:Ljava/lang/Exception;
    :goto_85
    return-void

    .line 480
    .restart local v0       #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v2       #i$:I
    .restart local v3       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #len$:I
    .restart local v5       #meth:Ljava/lang/reflect/Method;
    .restart local v6       #profileClass:Ljava/lang/Class;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_86
    :try_start_86
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_79

    .line 483
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v5           #meth:Ljava/lang/reflect/Method;
    .end local v7           #value:Ljava/lang/Object;
    :cond_8b
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_7d

    goto :goto_85

    .line 488
    .end local v0           #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #profileClass:Ljava/lang/Class;
    :cond_8f
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Edit a new profile"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_9c
    if-ge v2, v4, :cond_b5

    aget-object v3, v0, v2

    .line 490
    .restart local v3       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v8, :cond_b2

    .line 498
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 489
    :cond_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 501
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_b5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_85
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .registers 6
    .parameter "oldProfile"
    .parameter "newProfile"

    .prologue
    .line 391
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/sip/SipEditor$3;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 409
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .registers 6
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p1, :cond_3

    .line 260
    :cond_2
    :goto_2
    return-void

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1, p1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 251
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_2

    .line 256
    :catch_25
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 545
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 546
    .local v0, cc:[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 547
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setCheckBox(Lcom/android/phone/sip/SipEditor$PreferenceKey;Z)V
    .registers 4
    .parameter "key"
    .parameter "checked"

    .prologue
    .line 513
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 514
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    return-void
.end method

.method private setRemovedProfileAndFinish()V
    .registers 4

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 279
    const v1, 0x7f0c0254

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 283
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .registers 8
    .parameter "pref"

    .prologue
    .line 518
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_1f

    aget-object v2, v0, v1

    .line 520
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 522
    iput-object p1, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 526
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_1f
    return-void

    .line 519
    .restart local v2       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private showAlert(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_1d

    .line 293
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home button clicked, don\'t show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1c
    return-void

    .line 296
    :cond_1d
    new-instance v0, Lcom/android/phone/sip/SipEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/sip/SipEditor$2;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private unregisterOldPrimaryAccount()V
    .registers 5

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, primaryAccountUri:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_43

    .line 380
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 383
    :cond_43
    return-void
.end method

.method private unregisterProfile(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1, p1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    :goto_5
    return-void

    .line 271
    :catch_6
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private validateAndSetResult()V
    .registers 18

    .prologue
    .line 315
    const/4 v1, 0x1

    .line 316
    .local v1, allEmpty:Z
    const/4 v5, 0x0

    .line 317
    .local v5, firstEmptyFieldTitle:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v2

    .local v2, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_8
    if-ge v6, v9, :cond_71

    aget-object v8, v2, v6

    .line 318
    .local v8, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v10, v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 319
    .local v10, p:Landroid/preference/Preference;
    instance-of v14, v10, Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_33

    move-object v12, v10

    .line 320
    check-cast v12, Landroid/preference/EditTextPreference;

    .line 321
    .local v12, pref:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/sip/SipEditor;->isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z

    move-result v4

    .line 322
    .local v4, fieldEmpty:Z
    if-eqz v1, :cond_20

    if-nez v4, :cond_20

    const/4 v1, 0x0

    .line 325
    :cond_20
    if-eqz v4, :cond_4b

    .line 326
    sget-object v14, Lcom/android/phone/sip/SipEditor$4;->$SwitchMap$com$android$phone$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_d2

    .line 338
    if-nez v5, :cond_33

    .line 339
    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 317
    .end local v4           #fieldEmpty:Z
    .end local v12           #pref:Landroid/preference/EditTextPreference;
    :cond_33
    :goto_33
    :pswitch_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 328
    .restart local v4       #fieldEmpty:Z
    .restart local v12       #pref:Landroid/preference/EditTextPreference;
    :pswitch_36
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_33

    .line 335
    :pswitch_3e
    const v14, 0x7f0c0280

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_33

    .line 342
    :cond_4b
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_33

    .line 343
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 344
    .local v11, port:I
    const/16 v14, 0x3e8

    if-lt v11, v14, :cond_62

    const v14, 0xfffe

    if-le v11, v14, :cond_33

    .line 345
    :cond_62
    const v14, 0x7f0c0285

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 373
    .end local v4           #fieldEmpty:Z
    .end local v8           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v10           #p:Landroid/preference/Preference;
    .end local v11           #port:I
    .end local v12           #pref:Landroid/preference/EditTextPreference;
    :goto_70
    return-void

    .line 352
    :cond_71
    if-nez v1, :cond_79

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v14, :cond_7d

    .line 353
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_70

    .line 355
    :cond_7d
    if-eqz v5, :cond_95

    .line 356
    const v14, 0x7f0c0284

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/phone/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_70

    .line 360
    :cond_95
    :try_start_95
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    .line 361
    .local v13, profile:Landroid/net/sip/SipProfile;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 364
    const v14, 0x7f0c0253

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_c3} :catch_c4

    goto :goto_70

    .line 369
    .end local v7           #intent:Landroid/content/Intent;
    .end local v13           #profile:Landroid/net/sip/SipProfile;
    :catch_c4
    move-exception v3

    .line 370
    .local v3, e:Ljava/lang/Exception;
    sget-object v14, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v15, "Can not create new SipProfile"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_70

    .line 326
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_33
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 155
    sget-object v5, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v6, "start profile editor"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 159
    new-instance v5, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 160
    new-instance v5, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 163
    const v5, 0x7f040024

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->setContentView(I)V

    .line 164
    const v5, 0x7f050022

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 166
    if-nez p1, :cond_55

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "sip_profile"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    :goto_3c
    check-cast v3, Landroid/net/sip/SipProfile;

    iput-object v3, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 170
    .local v3, p:Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 171
    .local v4, screen:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_49
    if-ge v1, v2, :cond_5c

    .line 172
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 166
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #p:Landroid/net/sip/SipProfile;
    .end local v4           #screen:Landroid/preference/PreferenceGroup;
    :cond_55
    const-string v5, "profile"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_3c

    .line 175
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v3       #p:Landroid/net/sip/SipProfile;
    .restart local v4       #screen:Landroid/preference/PreferenceGroup;
    :cond_5c
    if-nez v3, :cond_8c

    .line 176
    const v5, 0x7f0700cb

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    const v5, 0x7f0c026c

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 190
    :goto_70
    new-instance v5, Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/phone/sip/SipEditor;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    .line 191
    new-instance v5, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    .line 193
    invoke-direct {p0, v3}, Lcom/android/phone/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_8b

    .line 198
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 200
    :cond_8b
    return-void

    .line 180
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_8c
    const v5, 0x7f0700cc

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    .line 182
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    const v6, 0x7f0c0251

    invoke-virtual {p0, v6}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/phone/sip/SipEditor$1;

    invoke-direct {v6, p0}, Lcom/android/phone/sip/SipEditor$1;-><init>(Lcom/android/phone/sip/SipEditor;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_70
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    const v0, 0x7f0c0255

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    const/4 v0, 0x2

    const v1, 0x7f0c0256

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 219
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 240
    packed-switch p1, :pswitch_data_e

    .line 245
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 242
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 243
    const/4 v0, 0x1

    goto :goto_7

    .line 240
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 235
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 228
    :sswitch_d
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    goto :goto_c

    .line 232
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_c

    .line 224
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_11
        0x102002c -> :sswitch_d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 204
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipEditor onPause(): finishing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 207
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 209
    :cond_28
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 210
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 434
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_14

    .line 435
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    .line 436
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_14

    .line 437
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 440
    :cond_14
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_19

    .line 454
    .end local p1
    :cond_18
    :goto_18
    return v2

    .line 441
    .restart local p1
    :cond_19
    if-nez p2, :cond_3b

    const-string v0, ""

    .line 442
    .local v0, value:Ljava/lang/String;
    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 443
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 450
    :goto_2c
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_18

    .line 451
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V

    goto :goto_18

    .line 441
    .end local v0           #value:Ljava/lang/String;
    .restart local p1
    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 444
    .restart local v0       #value:Ljava/lang/String;
    :cond_40
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4e

    .line 445
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 447
    :cond_4e
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 142
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 143
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_27

    .line 144
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    :cond_26
    :goto_26
    return-void

    .line 148
    :cond_27
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_26
.end method
