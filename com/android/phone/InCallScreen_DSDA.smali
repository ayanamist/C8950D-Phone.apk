.class public Lcom/android/phone/InCallScreen_DSDA;
.super Landroid/app/Activity;
.source "InCallScreen_DSDA.java"

# interfaces
.implements Lcom/android/phone/InCallFragment$InCallFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen_DSDA$4;,
        Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;,
        Lcom/android/phone/InCallScreen_DSDA$TabListener;,
        Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;,
        Lcom/android/phone/InCallScreen_DSDA$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field private static final ALLOW_SCREEN_ON:I = 0x70

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field private static final REQUEST_UPDATE_SCREEN:I = 0x7a

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final VDBG:Z


# instance fields
.field protected mApp:Lcom/android/phone/PhoneApp;

.field private mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mFragment0:Lcom/android/phone/InCallFragment;

.field private mFragment1:Lcom/android/phone/InCallFragment;

.field private mHandler:Landroid/os/Handler;

.field private mHideImmediately:Z

.field protected mIsDestroyed:Z

.field protected mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 212
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHideImmediately:Z

    .line 349
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$1;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    .line 2138
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$3;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 2282
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen_DSDA;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->updateScreen()V

    return-void
.end method

.method private addSecondTab(I)V
    .registers 7
    .parameter "subscription"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 526
    .local v0, tab:Landroid/app/ActionBar$Tab;
    if-nez v0, :cond_12

    .line 527
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "should be called when atleast and only one tab is already on display"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    :cond_12
    const-string v3, "fragment0"

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 532
    const-string v2, "fragment1"

    .line 539
    .local v2, tagForNewTab:Ljava/lang/String;
    :goto_20
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 540
    .local v1, tab2:Landroid/app/ActionBar$Tab;
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 541
    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 542
    new-instance v3, Lcom/android/phone/InCallScreen_DSDA$TabListener;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/phone/InCallScreen_DSDA$TabListener;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 546
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 553
    return-void

    .line 533
    .end local v1           #tab2:Landroid/app/ActionBar$Tab;
    .end local v2           #tagForNewTab:Ljava/lang/String;
    :cond_45
    const-string v3, "fragment1"

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 534
    const-string v2, "fragment0"

    .restart local v2       #tagForNewTab:Ljava/lang/String;
    goto :goto_20

    .line 536
    .end local v2           #tagForNewTab:Ljava/lang/String;
    :cond_54
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "tag created without a tag. We mandate each tab to have the tag"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private createfirstTab(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 504
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const-string v1, "fragment0"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 505
    const-string v1, "fragment0"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 506
    new-instance v1, Lcom/android/phone/InCallScreen_DSDA$TabListener;

    const-string v2, "fragment0"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/phone/InCallScreen_DSDA$TabListener;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 514
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 515
    return-void
.end method

.method private dismissProgressIndication()V
    .registers 2

    .prologue
    .line 1494
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1495
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_15

    .line 1496
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1499
    :cond_15
    return-void
.end method

.method private endInCallScreenSession(Z)V
    .registers 6
    .parameter "forceFinish"

    .prologue
    const/4 v3, 0x1

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endInCallScreenSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1002
    if-eqz p1, :cond_39

    .line 1003
    const-string v1, "InCallScreen"

    const-string v2, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1017
    :cond_33
    :goto_33
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1018
    return-void

    .line 1007
    :cond_39
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 1010
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1011
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_33

    .line 1012
    invoke-virtual {v0, v3}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    goto :goto_33
.end method

.method private getActiveFragment()Lcom/android/phone/InCallFragment;
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_17

    .line 581
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 583
    :goto_16
    return-object v0

    .line 582
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 583
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_16

    .line 587
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Fragment is currently active. Can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAltFragment(Landroid/app/Fragment;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "f"

    .prologue
    .line 2221
    if-nez p1, :cond_4

    .line 2222
    const/4 v0, 0x0

    .line 2226
    :goto_3
    return-object v0

    .line 2223
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2224
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_3

    .line 2226
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    goto :goto_3
.end method

.method private getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "phone"

    .prologue
    .line 2196
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "tag"

    .prologue
    .line 2586
    const-string v0, "fragment0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2587
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2589
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_a
.end method

.method private getVisibleFragment()Lcom/android/phone/InCallFragment;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 561
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 566
    :goto_e
    return-object v0

    .line 562
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 563
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_e

    .line 566
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private handleCallKey()Z
    .registers 3

    .prologue
    .line 1286
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1287
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_b

    .line 1288
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->handleCallKey()Z

    move-result v1

    .line 1290
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->okToDialDTMFTones()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1209
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1210
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1220
    .end local v0           #f:Lcom/android/phone/InCallFragment;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private internalAnswerAndEnd()V
    .registers 3

    .prologue
    .line 1508
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1512
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 1513
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2131
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    return-void
.end method

.method private okToDialDTMFTones()Z
    .registers 7

    .prologue
    .line 1876
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 1879
    .local v3, hasRingingCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1882
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1894
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v4, :cond_28

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_36

    :cond_28
    if-nez v3, :cond_36

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v5, :cond_36

    const/4 v0, 0x1

    .line 1904
    .local v0, canDial:Z
    :goto_35
    return v0

    .line 1894
    .end local v0           #canDial:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private okToDialDTMFTones(I)Z
    .registers 10
    .parameter "sub"

    .prologue
    .line 1909
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1910
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, p1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 1911
    .local v3, hasRingingCall:Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1912
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1913
    .local v0, c:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v4, Lcom/android/phone/MSimInCallUiState;

    .line 1915
    .local v4, mUIState:Lcom/android/phone/MSimInCallUiState;
    if-eqz v0, :cond_20

    .line 1916
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1928
    :cond_20
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v6, :cond_28

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_34

    :cond_28
    if-nez v3, :cond_34

    iget-object v6, v4, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v6, v6, p1

    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v6, v7, :cond_34

    const/4 v1, 0x1

    .line 1938
    .local v1, canDial:Z
    :goto_33
    return v1

    .line 1928
    .end local v1           #canDial:Z
    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private onIncomingRing()V
    .registers 2

    .prologue
    .line 2117
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onIncomingRing()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2128
    :cond_9
    return-void
.end method

.method private showProgressIndication(II)V
    .registers 5
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 1474
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1479
    :cond_20
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->dismissProgressIndication()V

    .line 1480
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1481
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/InCallScreen_DSDA;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1483
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1484
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1485
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1488
    return-void
.end method

.method private updateScreen()V
    .registers 3

    .prologue
    .line 2160
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-nez v1, :cond_d

    .line 2161
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "No refresh if the activity is not in foreground"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2164
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2165
    :cond_16
    return-void
.end method


# virtual methods
.method protected dismissAllDialogs()V
    .registers 3

    .prologue
    .line 1453
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1462
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_2a

    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2a

    .line 1465
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1467
    :cond_2a
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2067
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2069
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2071
    const/4 v0, 0x1

    return v0
.end method

.method public endInCallScreenSession()V
    .registers 3

    .prologue
    .line 984
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession()... phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 986
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2f

    .line 987
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(Z)V

    .line 991
    :goto_2e
    return-void

    .line 989
    :cond_2f
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public endInCallScreenSession(IZ)V
    .registers 10
    .parameter "subscription"
    .parameter "forceFinish"

    .prologue
    .line 931
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endInCallScreenSession()... phone state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 933
    :cond_20
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 934
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 936
    .local v0, f:Landroid/app/Fragment;
    if-nez v0, :cond_36

    .line 937
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_35

    const-string v5, "Can\'t find a fragment attached with this phone object. Bailing out"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 974
    :cond_35
    :goto_35
    return-void

    .line 943
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getTabCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_77

    .line 944
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->getAltFragment(Landroid/app/Fragment;)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 945
    .local v1, frag:Lcom/android/phone/InCallFragment;
    if-eqz v1, :cond_4a

    .line 946
    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->updateAfterTabChange()V

    .line 956
    .end local v1           #frag:Lcom/android/phone/InCallFragment;
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 959
    .local v4, tab:Landroid/app/ActionBar$Tab;
    if-eqz v4, :cond_5b

    .line 960
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 963
    :cond_5b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 964
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 965
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 968
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_7f

    .line 969
    invoke-direct {p0, p2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(Z)V

    goto :goto_35

    .line 950
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    .end local v4           #tab:Landroid/app/ActionBar$Tab;
    :cond_77
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->resetmActiveSubscription()V

    goto :goto_4a

    .line 971
    .restart local v2       #ft:Landroid/app/FragmentTransaction;
    .restart local v4       #tab:Landroid/app/ActionBar$Tab;
    :cond_7f
    const-string v5, "InCallScreen"

    const-string v6, "endInCallScreenSession(): Call in progress"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 919
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 920
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 921
    return-void
.end method

.method public getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-ne p1, v0, :cond_1f

    .line 2204
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2211
    :goto_1e
    return-object v0

    .line 2205
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v0

    if-ne p1, v0, :cond_3e

    .line 2207
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_1e

    .line 2210
    :cond_3e
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_47

    const-string v0, "Something is wrong. there is no fragment attached with an active connection"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2211
    :cond_47
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;
    .registers 7
    .parameter "tag"

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2171
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    .line 2172
    .local v3, tabCount:I
    const/4 v1, 0x0

    .line 2174
    .local v1, currentTab:Landroid/app/ActionBar$Tab;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_1a

    .line 2175
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 2176
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2181
    :cond_1a
    if-nez v1, :cond_26

    .line 2182
    sget-boolean v4, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v4, :cond_25

    const-string v4, "something wrong. Could not find a tab with a certain tag"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2183
    :cond_25
    const/4 v1, 0x0

    .line 2186
    .end local v1           #currentTab:Landroid/app/ActionBar$Tab;
    :cond_26
    return-object v1

    .line 2174
    .restart local v1       #currentTab:Landroid/app/ActionBar$Tab;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
    .registers 2

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    return-object v0
.end method

.method public handleOtaCallEnd()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2032
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2034
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2035
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_28

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_47

    :cond_28
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_47

    .line 2041
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_3f

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2043
    :cond_3f
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 2044
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->updateScreen()V

    .line 2047
    :cond_47
    return-void
.end method

.method internalHangup()V
    .registers 4

    .prologue
    .line 1537
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1538
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalHangup()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1543
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1558
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 1560
    const-string v1, "InCallScreen"

    const-string v2, "internalHangup(): phone is already IDLE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_2c
    return-void
.end method

.method protected internalResolveIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 1084
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1193
    :cond_8
    :goto_8
    return-void

    .line 1087
    :cond_9
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v5

    .line 1088
    .local v5, subscription:I
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1089
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1093
    .local v4, sub:I
    sget-boolean v6, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v6, :cond_43

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internalResolveIntent: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1113
    :cond_43
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1124
    const-string v6, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1129
    const-string v6, "com.android.phone.ShowDialpad"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1135
    .local v3, showDialpad:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 1136
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v6, v1, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    aput-boolean v3, v6, v4

    goto :goto_8

    .line 1146
    .end local v1           #mUIState:Lcom/android/phone/MSimInCallUiState;
    .end local v3           #showDialpad:Z
    :cond_65
    const-string v6, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1152
    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 1153
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1158
    :cond_8c
    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v6, v4}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 1160
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v6, :cond_8

    .line 1162
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1163
    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v7, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto/16 :goto_8

    .line 1170
    :cond_b0
    const-string v6, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 1174
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1177
    :cond_d1
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e1

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 1182
    :cond_e1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1184
    :cond_fa
    const-string v6, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 1187
    const-string v6, "InCallScreen"

    const-string v7, "internalResolveIntent: got launched with ACTION_UNDEFINED"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1190
    :cond_10b
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method internalSilenceRinger()V
    .registers 3

    .prologue
    .line 1522
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "internalSilenceRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1523
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1524
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1526
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 1528
    :cond_16
    return-void
.end method

.method isDialerOpened()Z
    .registers 3

    .prologue
    .line 2561
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v1

    .line 2563
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .registers 2

    .prologue
    .line 2150
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method isManageConferenceMode()Z
    .registers 3

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOtaCallInActiveState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2014
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2015
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_20

    .line 2019
    :cond_1f
    const/4 v1, 0x1

    .line 2021
    :cond_20
    return v1
.end method

.method public isOtaCallInEndState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2051
    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2052
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method okToShowDialpad()Z
    .registers 2

    .prologue
    .line 1952
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 263
    instance-of v0, p1, Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_1d

    .line 264
    const-string v0, "fragment0"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 265
    check-cast p1, Lcom/android/phone/InCallFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 270
    :cond_14
    :goto_14
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "Should not come here"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 272
    :cond_1d
    return-void

    .line 266
    .restart local p1
    :cond_1e
    const-string v0, "fragment1"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 267
    check-cast p1, Lcom/android/phone/InCallFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    .line 1225
    sget-boolean v3, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "onBackPressed()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1232
    :cond_9
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1237
    sget-boolean v3, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v3, :cond_1a

    const-string v3, "BACK key while ringing: ignored"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1273
    :cond_1a
    :goto_1a
    return-void

    .line 1247
    :cond_1b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1249
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-nez v0, :cond_25

    .line 1251
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1a

    .line 1255
    :cond_25
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v2

    .line 1256
    .local v2, sub:I
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 1258
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1259
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_1a

    .line 1263
    :cond_3e
    iget-object v3, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v3, v4, :cond_4f

    .line 1265
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    .line 1266
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->requestUpdateScreen()V

    goto :goto_1a

    .line 1272
    :cond_4f
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1a
.end method

.method public onCloseFragment(IZ)V
    .registers 3
    .parameter "subscription"
    .parameter "forcefinish"

    .prologue
    .line 2265
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(IZ)V

    .line 2266
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2085
    sget-boolean v4, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged: newConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2095
    :cond_1c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2105
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v2, :cond_7b

    move v0, v2

    .line 2106
    .local v0, isKeyboardOpen:Z
    :goto_24
    sget-boolean v4, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - isKeyboardOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2107
    :cond_3e
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7d

    move v1, v2

    .line 2108
    .local v1, isLandscape:Z
    :goto_44
    sget-boolean v2, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2109
    :cond_5e
    sget-boolean v2, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v2, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - uiMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2111
    :cond_7a
    return-void

    .end local v0           #isKeyboardOpen:Z
    .end local v1           #isLandscape:Z
    :cond_7b
    move v0, v3

    .line 2105
    goto :goto_24

    .restart local v0       #isKeyboardOpen:Z
    :cond_7d
    move v1, v3

    .line 2107
    goto :goto_44
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 416
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 418
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 421
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 422
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->setRequestedOrientation(I)V

    .line 427
    :cond_28
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_37

    .line 433
    const-string v5, "InCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->finish()V

    .line 496
    :cond_36
    :goto_36
    return-void

    .line 438
    :cond_37
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    .line 439
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget-object v7, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 443
    .local v4, subscription:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate Subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 447
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/high16 v0, 0x8

    .line 448
    .local v0, flags:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 449
    .local v3, ps:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_7d

    .line 455
    const/high16 v5, 0x40

    or-int/2addr v0, v5

    .line 457
    :cond_7d
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->addFlags(I)V

    .line 461
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 462
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 463
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 465
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen_DSDA;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 467
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onCreate: phone state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 475
    invoke-static {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->getInstance(Lcom/android/phone/InCallScreen_DSDA;)Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    .line 477
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mPowerManager:Landroid/os/PowerManager;

    .line 488
    if-nez p1, :cond_dd

    .line 489
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_d6

    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 490
    :cond_d6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->internalResolveIntent(Landroid/content/Intent;)V

    .line 494
    :cond_dd
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 495
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_36

    const-string v5, "onCreate(): exit"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    goto/16 :goto_36
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 853
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 858
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    .line 864
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->dismissAllDialogs()V

    .line 876
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_39

    .line 877
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    .line 879
    :cond_39
    return-void
.end method

.method public onFragmentDetached(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 2232
    const-string v0, "fragment0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2233
    iput-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    .line 2238
    :cond_b
    :goto_b
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "Should not come here"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2239
    :cond_14
    return-void

    .line 2234
    :cond_15
    const-string v0, "fragment1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2235
    iput-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1346
    sget-boolean v3, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown(keycode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1348
    :cond_21
    sparse-switch p1, :sswitch_data_64

    .line 1429
    :cond_24
    :sswitch_24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5e

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1433
    :cond_30
    :goto_30
    :sswitch_30
    return v2

    .line 1350
    :sswitch_31
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->handleCallKey()Z

    move-result v1

    .line 1351
    .local v1, handled:Z
    if-nez v1, :cond_30

    .line 1352
    const-string v3, "InCallScreen"

    const-string v4, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1372
    .end local v1           #handled:Z
    :sswitch_3f
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_24

    .line 1383
    const-string v3, "InCallScreen"

    const-string v4, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->internalSilenceRinger()V

    goto :goto_30

    .line 1398
    :sswitch_54
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .local v0, f:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->onMuteClick()V

    goto :goto_30

    .line 1433
    .end local v0           #f:Lcom/android/phone/InCallFragment;
    :cond_5e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_30

    .line 1348
    nop

    :sswitch_data_64
    .sparse-switch
        0x5 -> :sswitch_31
        0x18 -> :sswitch_3f
        0x19 -> :sswitch_3f
        0x1b -> :sswitch_30
        0x46 -> :sswitch_24
        0x4c -> :sswitch_24
        0x5b -> :sswitch_54
        0xa4 -> :sswitch_3f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1331
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1332
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1341
    :cond_1f
    :goto_1f
    return v1

    .line 1337
    :cond_20
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    .line 1341
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1f
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1080
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1081
    return-void
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 765
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "onPause()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 766
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 768
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 769
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 770
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 777
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 780
    const v0, 0x1129e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 784
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->dismissAllDialogs()V

    .line 787
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 794
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/InCallScreen_DSDA$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen_DSDA$2;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 814
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->updateKeyguardPolicy(Z)V

    .line 816
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 897
    return-void
.end method

.method protected onResume()V
    .registers 16

    .prologue
    const/16 v14, 0x70

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 608
    sget-boolean v8, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v8, :cond_e

    const-string v8, "onResume()..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 609
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 611
    iput-boolean v12, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    .line 614
    iput-boolean v12, p0, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivityForProximity:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "subscription"

    iget-object v10, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 621
    .local v6, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getTabCount()I

    move-result v8

    if-ne v8, v13, :cond_e4

    .line 622
    sget-boolean v8, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v8, :cond_38

    const-string v8, "Already two fragments panned out"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 624
    :cond_38
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 625
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 626
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_49
    if-ge v3, v13, :cond_65

    .line 627
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v7

    .line 628
    .local v7, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;

    move-result-object v2

    .line 629
    .local v2, fragment:Lcom/android/phone/InCallFragment;
    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v8

    if-eq v8, v6, :cond_62

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 632
    :cond_62
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 664
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #fragment:Lcom/android/phone/InCallFragment;
    .end local v3           #i:I
    .end local v7           #tab:Landroid/app/ActionBar$Tab;
    :cond_65
    :goto_65
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 667
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v8, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v4, Lcom/android/phone/MSimInCallUiState;

    .line 673
    .local v4, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v12}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 677
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v8, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 680
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 683
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen_DSDA;->takeKeyEvents(Z)V

    .line 691
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mBTUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    .line 695
    .local v1, bluetoothConnected:Z
    if-eqz v1, :cond_12d

    .line 696
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->setVolumeControlStream(I)V

    .line 703
    :goto_a1
    const v8, 0x1129d

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 710
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_132

    .line 727
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 742
    :goto_bb
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 746
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 749
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->restoreMuteState(I)Ljava/lang/Boolean;

    .line 751
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v11}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 754
    :cond_d6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v8

    const-class v9, Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 756
    return-void

    .line 638
    .end local v1           #bluetoothConnected:Z
    .end local v4           #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_e4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getTabCount()I

    move-result v8

    if-ne v8, v12, :cond_117

    .line 641
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActiveFragment()Lcom/android/phone/InCallFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v8

    if-ne v8, v6, :cond_112

    .line 642
    sget-boolean v8, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v8, :cond_101

    const-string v8, "resume event is for already visible fragment"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 644
    :cond_101
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    invoke-static {p0, v6}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_65

    .line 647
    :cond_112
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen_DSDA;->addSecondTab(I)V

    goto/16 :goto_65

    .line 651
    :cond_117
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen_DSDA;->createfirstTab(I)V

    .line 657
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 658
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen_DSDA;->addSecondTab(I)V

    goto/16 :goto_65

    .line 698
    .restart local v1       #bluetoothConnected:Z
    .restart local v4       #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    :cond_12d
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen_DSDA;->setVolumeControlStream(I)V

    goto/16 :goto_a1

    .line 740
    :cond_132
    iget-object v8, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8, v11}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_bb
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 887
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 820
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 821
    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 827
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 828
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 830
    :cond_2d
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_72

    .line 834
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_72

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_72

    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_72

    .line 842
    sget-boolean v1, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v1, :cond_62

    const-string v1, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 843
    :cond_62
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen_DSDA;->moveTaskToBack(Z)Z

    .line 844
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_72

    .line 845
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 849
    :cond_72
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 1317
    .local v0, f:Lcom/android/phone/InCallFragment;
    if-nez p1, :cond_16

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1319
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1322
    :cond_16
    return-void
.end method

.method public refreshRejectCallHint(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 2599
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2600
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForPhone(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 2602
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_11

    .line 2603
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->setRejectCallHint()V

    .line 2605
    :cond_11
    return-void
.end method

.method public refreshTabs()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 2568
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2569
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v5

    .line 2570
    .local v5, tabCount:I
    if-le v5, v9, :cond_36

    .line 2571
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v5, :cond_36

    .line 2572
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 2573
    .local v4, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentOfTab(Ljava/lang/String;)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 2574
    .local v1, fragment:Lcom/android/phone/InCallFragment;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2575
    .local v3, isSelected:Z
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v8

    invoke-virtual {v1, v7, v3, v9, v8}, Lcom/android/phone/InCallFragment;->getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;

    move-result-object v6

    .line 2577
    .local v6, tabView:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 2571
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2583
    .end local v1           #fragment:Lcom/android/phone/InCallFragment;
    .end local v2           #i:I
    .end local v3           #isSelected:Z
    .end local v4           #tab:Landroid/app/ActionBar$Tab;
    .end local v6           #tabView:Landroid/view/View;
    :cond_36
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1991
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1992
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2000
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 2008
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2009
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2010
    return-void
.end method

.method requestUpdateScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x7a

    .line 1974
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1975
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1976
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1980
    return-void
.end method

.method public resetInCallScreenMode()V
    .registers 2

    .prologue
    .line 2061
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "resetInCallScreenMode: setting mode to UNDEFINED..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 2062
    :cond_9
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2063
    return-void
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 11
    .parameter "newMode"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1600
    sget-boolean v4, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInCallScreenMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1601
    :cond_1e
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1603
    sget-object v4, Lcom/android/phone/InCallScreen_DSDA$4;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_17c

    .line 1732
    :cond_2f
    :goto_2f
    return-void

    .line 1605
    :pswitch_30
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 1606
    const-string v4, "InCallScreen"

    const-string v5, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_2f

    .line 1611
    :cond_49
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 1614
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_57

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v8, :cond_75

    .line 1615
    :cond_57
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_2f

    .line 1629
    :cond_75
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 1631
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1635
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1644
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1646
    .local v0, callDuration:J
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 1649
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2f

    .line 1660
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_c1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1661
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1664
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2f

    .line 1669
    :pswitch_e4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 1670
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1674
    :goto_f5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1675
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_2f

    .line 1672
    :cond_10d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_f5

    .line 1679
    :pswitch_119
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1681
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2f

    .line 1685
    :pswitch_12f
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1687
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2f

    .line 1715
    :pswitch_145
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1719
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_175

    .line 1720
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_166

    .line 1721
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4, v8}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1728
    :cond_166
    :goto_166
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v3

    .local v3, f:Lcom/android/phone/InCallFragment;
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2f

    .line 1724
    .end local v3           #f:Lcom/android/phone/InCallFragment;
    :cond_175
    const-string v4, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    goto :goto_166

    .line 1603
    nop

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_c1
        :pswitch_e4
        :pswitch_119
        :pswitch_12f
        :pswitch_145
    .end packed-switch
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V
    .registers 13
    .parameter "newMode"
    .parameter "sub"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1736
    sget-boolean v5, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v5, :cond_1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInCallScreenMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    .line 1737
    :cond_1e
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    .line 1738
    .local v3, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, v3, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object p1, v5, p2

    .line 1739
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1742
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    sget-object v5, Lcom/android/phone/InCallScreen_DSDA$4;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_172

    .line 1864
    :goto_39
    return-void

    .line 1744
    :pswitch_3a
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 1745
    const-string v5, "InCallScreen"

    const-string v6, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v5, p2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    goto :goto_39

    .line 1750
    :cond_53
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v2

    .line 1753
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v8, :cond_7f

    .line 1754
    :cond_61
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v5, p2}, Lcom/android/phone/InCallScreen_DSDA;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;I)V

    goto :goto_39

    .line 1767
    :cond_7f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 1769
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1773
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1782
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1784
    .local v0, callDuration:J
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 1787
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_39

    .line 1798
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_cb
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1799
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1802
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_39

    .line 1807
    :pswitch_ee
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1808
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 1809
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_39

    .line 1813
    :pswitch_111
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v5, v6}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1815
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_39

    .line 1819
    :pswitch_127
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v5, v6}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1821
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_39

    .line 1849
    :pswitch_13d
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1853
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_16b

    .line 1854
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_15e

    .line 1855
    iget-object v5, p0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5, v8}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1861
    :cond_15e
    :goto_15e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen_DSDA;->getVisibleFragment()Lcom/android/phone/InCallFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallFragment;->getmInCallPanel()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_39

    .line 1858
    :cond_16b
    const-string v5, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen_DSDA;->log(Ljava/lang/String;)V

    goto :goto_15e

    .line 1742
    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_cb
        :pswitch_ee
        :pswitch_111
        :pswitch_127
        :pswitch_13d
    .end packed-switch
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 604
    return-void
.end method

.method public setupPathFileName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2248
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 2249
    .local v1, f:Landroid/app/Fragment;
    if-nez v1, :cond_3c

    .line 2250
    const-string v4, "InCallScreen"

    const-string v5, "could not find a fragment for an active subscription. Would give default file path"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2253
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_hh_mm_ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2254
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2255
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 2259
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #f:Landroid/app/Fragment;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :goto_3b
    return-object v4

    .restart local v1       #f:Landroid/app/Fragment;
    :cond_3c
    check-cast v1, Lcom/android/phone/InCallFragment;

    .end local v1           #f:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->setupPathFileName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3b
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 3

    .prologue
    .line 1035
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1039
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    .line 1042
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1043
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    .line 1046
    :cond_3d
    return-void
.end method

.method updateAllScreenAll()V
    .registers 3

    .prologue
    .line 1049
    sget-boolean v0, Lcom/android/phone/InCallScreen_DSDA;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1053
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1056
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1057
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA;->mFragment1:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1059
    :cond_3d
    return-void
.end method

.method public updateFragmentScreen(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2612
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 2613
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_f

    .line 2614
    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 2617
    .end local v0           #fragment:Lcom/android/phone/InCallFragment;
    :cond_f
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .registers 4
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1025
    if-eqz p1, :cond_c

    .line 1026
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1030
    :goto_b
    return-void

    .line 1028
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_b
.end method
