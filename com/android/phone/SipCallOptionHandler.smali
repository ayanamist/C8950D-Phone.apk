.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DIALOG_NO_INTERNET_ERROR:I = 0x3

.field static final DIALOG_NO_VOIP:I = 0x4

.field static final DIALOG_SELECT_OUTGOING_SIP_PHONE:I = 0x1

.field static final DIALOG_SELECT_PHONE_TYPE:I = 0x0

.field static final DIALOG_SIZE:I = 0x5

.field static final DIALOG_START_SIP_SETTINGS:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final IMS_DBG:Z = false

.field static final TAG:Ljava/lang/String; = "SipCallOptionHandler"


# instance fields
.field private imsCallType:I

.field private imsServerAddress:Ljava/lang/String;

.field private isImsDefault:Z

.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    .line 73
    const-string v0, "IMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 92
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->convertCallToIMS()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SipCallOptionHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 303
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 305
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090026

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 307
    .local v2, view:Landroid/view/View;
    const v3, 0x1020245

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 309
    .local v1, makePrimaryCheckBox:Landroid/widget/CheckBox;
    const v3, 0x7f0c0249

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 310
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    const v3, 0x1020246

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    .line 313
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0c024a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method private convertCallToIMS()V
    .registers 7

    .prologue
    .line 482
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 483
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, scheme:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 515
    :cond_1a
    :goto_1a
    return-void

    .line 494
    :cond_1b
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 495
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, imsNumber:Ljava/lang/String;
    :goto_29
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "sip"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 501
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.CALL_DOMAIN"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.CALL_TYPE"

    iget v5, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 509
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :cond_57
    const-string v3, "SipCallOptionHandler"

    const-string v4, "Converting regular call to IMS call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-boolean v3, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IMS number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 497
    .end local v0           #imsNumber:Ljava/lang/String;
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #imsNumber:Ljava/lang/String;
    goto :goto_29
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .registers 8
    .parameter "p"

    .prologue
    .line 374
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 375
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 389
    :goto_10
    return-void

    .line 379
    :cond_11
    :try_start_11
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 380
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 381
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_40

    .line 382
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_25
    .catch Landroid/net/sip/SipException; {:try_start_11 .. :try_end_25} :catch_26

    goto :goto_10

    .line 386
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :catch_26
    move-exception v1

    .line 387
    .local v1, e:Landroid/net/sip/SipException;
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open sip profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 384
    .end local v1           #e:Landroid/net/sip/SipException;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_40
    :try_start_40
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/net/sip/SipException; {:try_start_40 .. :try_end_58} :catch_26

    goto :goto_10
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .registers 6
    .parameter "primarySipUri"

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    .line 469
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v3, :cond_f

    move-object v1, v2

    .line 473
    :goto_e
    return-object v1

    .line 470
    :cond_f
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 471
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    .end local v1           #p:Landroid/net/sip/SipProfile;
    :cond_2c
    move-object v1, v2

    .line 473
    goto :goto_e
.end method

.method private getPrimarySipPhone()V
    .registers 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, primarySipUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 454
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_25

    .line 455
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 456
    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    :goto_24
    return-void

    .line 464
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_24
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 319
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 320
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 321
    .local v1, i:I
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 322
    .local v4, p:Landroid/net/sip/SipProfile;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_f

    .line 324
    .end local v4           #p:Landroid/net/sip/SipProfile;
    :cond_25
    return-object v0
.end method

.method private isNetworkConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 432
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 433
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 434
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_19

    .line 439
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_18
    :goto_18
    return v2

    .line 436
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_25

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_25
    move v2, v3

    goto :goto_18
.end method

.method private setResultAndFinish()V
    .registers 2

    .prologue
    .line 392
    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .registers 3

    .prologue
    .line 443
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 362
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 365
    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 366
    if-eqz p2, :cond_b

    .line 367
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :goto_a
    return-void

    .line 369
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 328
    const/4 v2, -0x2

    if-ne p2, v2, :cond_8

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 358
    :goto_7
    return-void

    .line 332
    :cond_8
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_4b

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p2

    .line 335
    .local v1, selection:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v2, :cond_38

    const-string v2, "SipCallOptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User pick phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_38
    const v2, 0x7f0c024c

    invoke-virtual {p0, v2}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 337
    iput-boolean v5, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 338
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_7

    .line 341
    .end local v1           #selection:Ljava/lang/String;
    :cond_4b
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v2, v2, v5

    if-ne p1, v2, :cond_5f

    .line 342
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    iput-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 357
    :cond_5b
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_7

    .line 343
    :cond_5f
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eq p1, v2, :cond_6d

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_71

    .line 345
    :cond_6d
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7

    .line 348
    :cond_71
    const/4 v2, -0x1

    if-ne p2, v2, :cond_83

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 354
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_83
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 108
    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate: got intent action \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 229
    :goto_3c
    return-void

    .line 118
    :cond_3d
    const-string v8, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 119
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_4f

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_3c

    .line 128
    :cond_4f
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v7

    .line 152
    .local v7, voipSupported:Z
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_78

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "voipSupported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_78
    new-instance v8, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 154
    new-instance v8, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 155
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    .line 156
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_ac

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_ac
    new-instance v8, Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/ims/ImsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    .line 159
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getisImsDefault()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    .line 160
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getServerAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    .line 161
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mImsSharedPreferences:Lcom/android/phone/ims/ImsSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/ims/ImsSharedPreferences;->getCallType()I

    move-result v8

    iput v8, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    .line 162
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->IMS_DBG:Z

    if-eqz v8, :cond_101

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS Server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->imsServerAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IMS call type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/SipCallOptionHandler;->imsCallType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is IMS default: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/phone/SipCallOptionHandler;->isImsDefault:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_101
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 167
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v2

    .line 170
    .local v2, isInCellNetwork:Z
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12d

    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14e

    :cond_12d
    move v3, v10

    .line 172
    .local v3, isKnownCallScheme:Z
    :goto_12e
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13e

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_146

    :cond_13e
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_150

    :cond_146
    move v4, v10

    .line 177
    .local v4, isRegularCall:Z
    :goto_147
    if-nez v3, :cond_152

    .line 178
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_3c

    .end local v3           #isKnownCallScheme:Z
    .end local v4           #isRegularCall:Z
    :cond_14e
    move v3, v9

    .line 170
    goto :goto_12e

    .restart local v3       #isKnownCallScheme:Z
    :cond_150
    move v4, v9

    .line 172
    goto :goto_147

    .line 183
    .restart local v4       #isRegularCall:Z
    :cond_152
    if-nez v7, :cond_161

    .line 184
    if-nez v4, :cond_15c

    .line 185
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_3c

    .line 187
    :cond_15c
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_3c

    .line 199
    :cond_161
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_198

    .line 200
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_177

    .line 201
    if-nez v4, :cond_198

    .line 202
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_3c

    .line 206
    :cond_177
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18a

    if-eqz v4, :cond_18a

    if-eqz v2, :cond_18a

    .line 208
    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_3c

    .line 211
    :cond_18a
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ADDRESS_ONLY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_196

    if-nez v4, :cond_198

    .line 213
    :cond_196
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 218
    :cond_198
    iget-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v8, :cond_1ad

    .line 221
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v8

    if-gtz v8, :cond_1a6

    if-nez v4, :cond_1ab

    .line 222
    :cond_1a6
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_3c

    .line 225
    :cond_1ab
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 228
    :cond_1ad
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_3c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1080027

    .line 243
    packed-switch p1, :pswitch_data_de

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, dialog:Landroid/app/Dialog;
    :goto_d
    if-eqz v0, :cond_13

    .line 297
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    .line 299
    :cond_13
    return-object v0

    .line 245
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_14
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0247

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 252
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 254
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_38
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0248

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 261
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_d

    .line 264
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_60
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c024d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c024e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c024f

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_d

    .line 274
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_8b
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 275
    .local v1, wifiOnly:Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_b8

    const v2, 0x7f0c0287

    :goto_99
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_bc

    const v2, 0x7f0c0289

    :goto_a2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 275
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_b8
    const v2, 0x7f0c0286

    goto :goto_99

    :cond_bc
    const v2, 0x7f0c0288

    goto :goto_a2

    .line 286
    .end local v1           #wifiOnly:Z
    :pswitch_c0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c028a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_d

    .line 243
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_14
        :pswitch_38
        :pswitch_60
        :pswitch_8b
        :pswitch_c0
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 239
    :goto_9
    return-void

    .line 235
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 236
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 235
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 238
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_9
.end method
