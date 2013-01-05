.class public Lcom/android/phone/MSimPhoneApp;
.super Lcom/android/phone/PhoneApp;
.source "MSimPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneApp$1;,
        Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;,
        Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;,
        Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x1

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field private static final EVENT_PERSO_LOCKED:I = 0x3

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "MSimPhoneApp"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final VDBG:Z

.field private static mSinglePhones:[Lcom/android/phone/SinglePhone;


# instance fields
.field isCDMACallReallyConnected:Z

.field isGsmCallRemoteAnswered:Z

.field private mActiveFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/InCallFragment;",
            ">;"
        }
    .end annotation
.end field

.field mActiveSubscription:I

.field private mDefaultSubscription:I

.field protected mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

.field mInvalidateInCallControls:Z

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRingingSub:I

.field private mSubListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimPhoneApp;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 127
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput v2, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    .line 148
    iput v3, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 154
    iput v3, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 160
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    .line 179
    iput-boolean v2, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    .line 183
    const-string v0, "MSimPhoneApp"

    const-string v1, "MSPhoneApp creation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sput-object p0, Lcom/android/phone/MSimPhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 185
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 186
    const-string v0, "MSimPhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSPhoneApp creation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method static synthetic access$200(I)Lcom/android/phone/SinglePhone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneApp;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MSimPhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneApp;->setAutoTimeByNetworkType()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/MSimPhoneApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    return p1
.end method

.method private clearCdmaVariables(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 867
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    invoke-virtual {v0}, Lcom/android/phone/SinglePhone;->clearCdmaVariables()V

    .line 868
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 869
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 870
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 871
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 872
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 873
    return-void
.end method

.method private static getSinglePhone(I)Lcom/android/phone/SinglePhone;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 891
    :try_start_0
    sget-object v1, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    aget-object v1, v1, p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 894
    :goto_4
    return-object v1

    .line 892
    :catch_5
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscripton Index out of bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "intent"
    .parameter "phone"

    .prologue
    .line 880
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 882
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_13

    .line 883
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 884
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1, p2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V

    .line 886
    .end local v1           #state:I
    :cond_13
    return-void
.end method

.method private setAutoTimeByNetworkType()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 818
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 819
    .local v0, iNetworkType:I
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get network type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, 0x4

    if-eq v1, v0, :cond_2d

    const/4 v1, 0x5

    if-eq v1, v0, :cond_2d

    const/4 v1, 0x6

    if-eq v1, v0, :cond_2d

    const/4 v1, 0x7

    if-ne v1, v0, :cond_59

    .line 826
    :cond_2d
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 827
    const-string v1, "MSimPhoneApp"

    const-string v2, "CDMA Network put  auto time is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 829
    const-string v1, "MSimPhoneApp"

    const-string v2, "CDMA Network put  auto time zone is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_59
    return-void
.end method

.method private updatePhoneAppCdmaVariables(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    .line 853
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAppCdmaVariables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 856
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v0, :cond_3b

    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    .line 857
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 858
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 859
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 860
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 861
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 863
    :cond_3b
    return-void
.end method


# virtual methods
.method public clearInCallScreenMode()V
    .registers 2

    .prologue
    .line 1229
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1230
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_d

    .line 1231
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->resetInCallScreenMode()V

    .line 1236
    :cond_d
    :goto_d
    return-void

    .line 1234
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    goto :goto_d
.end method

.method public clearOtaState()V
    .registers 3

    .prologue
    .line 1205
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_13

    .line 1206
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_12

    .line 1208
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1213
    :cond_12
    :goto_12
    return-void

    .line 1211
    :cond_13
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_12
.end method

.method createCallLogIntent(I)Landroid/content/Intent;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    return-object v0
.end method

.method createInCallIntent(I)Landroid/content/Intent;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 518
    const-string v1, "MSimPhoneApp"

    const-string v2, "createInCallIntent subscription:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    return-object v0
.end method

.method dismissCallScreen(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_31

    .line 597
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_32

    .line 606
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 609
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->displayCallScreen()V

    .line 611
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 628
    :cond_31
    :goto_31
    return-void

    .line 618
    :cond_32
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_3d

    .line 619
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 620
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearUserActivityTimeout()V

    goto :goto_31

    .line 622
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_31
.end method

.method dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 644
    const-string v0, "MSimPhoneApp"

    const-string v1, "dismissCallScreen_DSDA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_3c

    .line 646
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_3d

    .line 655
    :cond_2d
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 658
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->displayCallScreen(I)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->handleOtaCallEnd()V

    .line 677
    :cond_3c
    :goto_3c
    return-void

    .line 667
    :cond_3d
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_48

    .line 668
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->wakeUpScreen()V

    .line 669
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearUserActivityTimeout()V

    goto :goto_3c

    .line 671
    :cond_48
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->finish()V

    goto :goto_3c
.end method

.method public dismissOtaDialogs()V
    .registers 2

    .prologue
    .line 1217
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_12

    .line 1218
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_11

    .line 1220
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1225
    :cond_11
    :goto_11
    return-void

    .line 1223
    :cond_12
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    goto :goto_11
.end method

.method displayCallScreen()V
    .registers 6

    .prologue
    .line 534
    sget-boolean v1, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_13

    .line 535
    const-string v1, "MSimPhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    :goto_12
    return-void

    .line 542
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimPhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_26} :catch_2a

    .line 549
    :goto_26
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 543
    :catch_2a
    move-exception v0

    .line 547
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method displayCallScreen(I)V
    .registers 7
    .parameter "sub"

    .prologue
    .line 559
    sget-boolean v1, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_13

    .line 560
    const-string v1, "MSimPhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    :goto_12
    return-void

    .line 567
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1c} :catch_20

    .line 574
    :goto_1c
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 568
    :catch_20
    move-exception v0

    .line 572
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MSimPhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCdmaPhoneCallState(I)Lcom/android/phone/CdmaPhoneCallState;
    .registers 4
    .parameter "subscription"

    .prologue
    .line 986
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 987
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-nez v0, :cond_8

    .line 988
    const/4 v1, 0x0

    .line 990
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    goto :goto_7
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataSubscription()I
    .registers 2

    .prologue
    .line 1017
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 1005
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 910
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 911
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v0, :cond_9

    .line 912
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 915
    :goto_8
    return-object v1

    .line 914
    :cond_9
    const-string v1, "MSimPhoneApp"

    const-string v2, "singlePhone object is null returning default phone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    sget-object v1, Lcom/android/phone/MSimPhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_8
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .registers 3

    .prologue
    .line 1086
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    if-eq v0, v1, :cond_c

    .line 1087
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1090
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_b
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 682
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getPhoneSub(Lcom/android/internal/telephony/Phone;)I
    .registers 5
    .parameter "phone"

    .prologue
    .line 922
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 923
    .local v1, numPhones:I
    const/4 v0, 0x0

    .line 925
    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_17

    .line 926
    sget-object v2, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-ne v2, p1, :cond_14

    .line 932
    .end local v0           #i:I
    :goto_13
    return v0

    .line 929
    .restart local v0       #i:I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 932
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public getSMSSubscription()I
    .registers 2

    .prologue
    .line 1022
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscription()I
    .registers 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .registers 10

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getVoiceSubscription()I

    move-result v6

    .line 960
    .local v6, voiceSub:I
    const/4 v4, 0x0

    .line 961
    .local v4, sub:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 962
    .local v0, count:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v5

    .line 964
    .local v5, subManager:Lcom/android/internal/telephony/SubscriptionManager;
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    .line 965
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_22

    .line 966
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 967
    move v4, v1

    .line 982
    :cond_22
    return v4

    .line 965
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 972
    .end local v1           #i:I
    :cond_26
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_27
    if-ge v1, v0, :cond_22

    .line 973
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 974
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 975
    .local v3, ss:I
    if-eqz v3, :cond_3a

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3d

    .line 977
    :cond_3a
    move v4, v1

    .line 978
    if-eq v4, v6, :cond_22

    .line 972
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method public getmActiveSubscription()I
    .registers 2

    .prologue
    .line 1054
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    return v0
.end method

.method public getmRingingSubscription()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    return v0
.end method

.method initForNewRadioTechnology(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    .line 694
    sget-boolean v2, Lcom/android/phone/MSimPhoneApp;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "MSimPhoneApp"

    const-string v3, "initForNewRadioTechnology..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_b
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v1

    .line 697
    .local v1, singlePhone:Lcom/android/phone/SinglePhone;
    iget-object v0, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 699
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 701
    invoke-virtual {v1}, Lcom/android/phone/SinglePhone;->initializeCdmaVariables()V

    .line 702
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 703
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->clearOtaState()V

    .line 706
    :cond_20
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 707
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 708
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_35

    .line 709
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 714
    :cond_35
    sget-boolean v2, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_43

    .line 715
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v2, :cond_42

    .line 716
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->updateAfterRadioTechnologyChange()V

    .line 725
    :cond_42
    :goto_42
    return-void

    .line 719
    :cond_43
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_42

    .line 720
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    goto :goto_42
.end method

.method initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    .line 487
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 488
    .local v2, subtype:I
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 489
    .local v1, subscription:I
    const-string v3, "MSimPhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show sim depersonal panel subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2, v1}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;II)V

    .line 492
    .local v0, dpPanel:Lcom/android/phone/IccDepersonalizationPanel;
    invoke-virtual {v0}, Lcom/android/phone/IccDepersonalizationPanel;->show()V

    .line 493
    return-void
.end method

.method public isCDMACallReallyConnected()Z
    .registers 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    return v0
.end method

.method protected isDialerOpened()Z
    .registers 2

    .prologue
    .line 1156
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_14

    .line 1157
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1159
    :goto_11
    return v0

    .line 1157
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 1159
    :cond_14
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isDialerOpened()Z

    move-result v0

    goto :goto_11
.end method

.method public isGsmCallRemoteAnswered()Z
    .registers 2

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    return v0
.end method

.method public isInvalidateInCallControls()Z
    .registers 2

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 2

    .prologue
    .line 1182
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1183
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_f

    .line 1184
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInActiveState()Z

    move-result v0

    .line 1188
    :goto_e
    return v0

    .line 1186
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 1188
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v0

    goto :goto_e
.end method

.method public isOtaCallInEndState()Z
    .registers 2

    .prologue
    .line 1193
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1194
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_f

    .line 1195
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isOtaCallInEndState()Z

    move-result v0

    .line 1199
    :goto_e
    return v0

    .line 1197
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    .line 1199
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isOtaCallInEndState()Z

    move-result v0

    goto :goto_e
.end method

.method isShowingCallScreen()Z
    .registers 2

    .prologue
    .line 1136
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1137
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1140
    :goto_9
    return v0

    .line 1138
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v0

    goto :goto_9

    .line 1140
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    goto :goto_9
.end method

.method isShowingCallScreenForProximity()Z
    .registers 2

    .prologue
    .line 1145
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_11

    .line 1146
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1149
    :goto_9
    return v0

    .line 1147
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_9

    .line 1149
    :cond_11
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v0

    goto :goto_9
.end method

.method isSimPinEnabled(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 580
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 581
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-boolean v1, v0, Lcom/android/phone/SinglePhone;->mIsSimPinEnabled:Z

    return v1
.end method

.method isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 938
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    return v0
.end method

.method public notifyListener()V
    .registers 4

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 1254
    .local v1, listener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;
    if-eqz v1, :cond_6

    .line 1255
    invoke-interface {v1}, Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;->onSubscriptionChanged()V

    goto :goto_6

    .line 1258
    .end local v1           #listener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;
    :cond_18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1026
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_11

    .line 1027
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 1033
    :goto_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1034
    return-void

    .line 1029
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_7
.end method

.method public onCreate()V
    .registers 24

    .prologue
    .line 200
    const-string v19, "MSimPhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MSimPhoneApp:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 207
    .local v14, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110023

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    sput-boolean v19, Lcom/android/phone/MSimPhoneApp;->sVoiceCapable:Z

    .line 216
    const-string v19, "hw_call_wakeup"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_55

    .line 217
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    .line 221
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    if-nez v19, :cond_3ee

    .line 222
    const-string v19, "MSimPhoneApp"

    const-string v20, " DSDS PhoneApp:"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/MSimPhoneFactory;->makeMultiSimDefaultPhones(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 229
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 231
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 233
    .local v11, numPhones:I
    new-array v0, v11, [Lcom/android/phone/SinglePhone;

    move-object/from16 v19, v0

    sput-object v19, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    .line 234
    const/4 v8, 0x0

    .local v8, i:I
    :goto_90
    if-ge v8, v11, :cond_b3

    .line 235
    sget-object v19, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    new-instance v20, Lcom/android/phone/SinglePhone;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lcom/android/phone/SinglePhone;-><init>(I)V

    aput-object v20, v19, v8

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/phone/MSimPhoneApp;->mSinglePhones:[Lcom/android/phone/SinglePhone;

    aget-object v20, v20, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_90

    .line 240
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimPhoneApp;->setDefaultPhone(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 248
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/MSimNotificationMgr;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MSimPhoneApp;->phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 257
    .local v12, phoneType:I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_13a

    .line 259
    new-instance v19, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 263
    :cond_13a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    if-eqz v19, :cond_2eb

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 273
    :goto_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 275
    new-instance v19, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v19, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MSimPhoneApp$MSimMediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "power"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 280
    .local v13, pm:Landroid/os/PowerManager;
    const v19, 0x1000001a

    const-string v20, "MSimPhoneApp"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 284
    const v19, 0x20000001

    const-string v20, "MSimPhoneApp"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    invoke-virtual {v13}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_1f0

    .line 289
    const/16 v19, 0x20

    const-string v20, "MSimPhoneApp"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 292
    :cond_1f0
    sget-boolean v19, Lcom/android/phone/MSimPhoneApp;->DBG:Z

    if-eqz v19, :cond_212

    const-string v19, "MSimPhoneApp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onCreate: mProximityWakeLock: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_212
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimPhoneApp;->proximitySensorModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_22f

    .line 296
    new-instance v19, Lcom/android/phone/AccelerometerListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 299
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "keyguard"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/KeyguardManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 303
    const-string v19, "power"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 309
    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/MSimInCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/MSimInCallUiState;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/phone/CallLogAsync;

    invoke-direct/range {v22 .. v22}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/MSimCallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/MSimCallNotifier;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/MSimCallNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/XDivertUtility;->init(Lcom/android/phone/MSimPhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)Lcom/android/phone/XDivertUtility;

    .line 325
    const/4 v8, 0x0

    :goto_2b8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2f5

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v15

    .line 327
    .local v15, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v15, :cond_2e8

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    :cond_2e8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b8

    .line 270
    .end local v13           #pm:Landroid/os/PowerManager;
    .end local v15           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_2eb
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_16c

    .line 334
    .restart local v13       #pm:Landroid/os/PowerManager;
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x34

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080005

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 343
    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v9, intentFilter:Landroid/content/IntentFilter;
    const-string v19, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v19, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v19, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v19, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v19, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v19, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v19, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v19, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v19, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v19, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v19, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_38d

    .line 357
    const-string v19, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    :cond_38d
    const-string v19, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimPhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    new-instance v10, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v10, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimPhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f05001e

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/high16 v20, 0x7f05

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 388
    .end local v8           #i:I
    .end local v9           #intentFilter:Landroid/content/IntentFilter;
    .end local v10           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v11           #numPhones:I
    .end local v12           #phoneType:I
    .end local v13           #pm:Landroid/os/PowerManager;
    :cond_3ee
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3ef
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_41d

    .line 389
    invoke-static {v8}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v16

    .line 390
    .local v16, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v16, :cond_41a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41a

    .line 392
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    if-eqz v19, :cond_41a

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 388
    :cond_41a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3ef

    .line 401
    .end local v16           #singlePhone:Lcom/android/phone/SinglePhone;
    :cond_41d
    const-string v19, "content://iccmsim/adn"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 404
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_454

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "preferred_tty_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 420
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080006

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_498

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "hearing_aid"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 424
    .local v7, hac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 426
    .local v5, audioManager:Landroid/media/AudioManager;
    const-string v20, "HACSetting"

    if-eqz v7, :cond_4e0

    const-string v19, "ON"

    :goto_491
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v7           #hac:I
    :cond_498
    :try_start_498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f050006

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 436
    .local v17, xml:Landroid/content/res/XmlResourceParser;
    :cond_4a9
    :goto_4a9
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, xmlEventType:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4df

    .line 437
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4a9

    .line 438
    const-string v19, "cfu_activation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4e3

    .line 440
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfu_activation:Ljava/lang/String;
    :try_end_4dd
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_498 .. :try_end_4dd} :catch_4de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_498 .. :try_end_4dd} :catch_504
    .catch Ljava/io/IOException; {:try_start_498 .. :try_end_4dd} :catch_52a

    goto :goto_4a9

    .line 474
    .end local v17           #xml:Landroid/content/res/XmlResourceParser;
    .end local v18           #xmlEventType:I
    :catch_4de
    move-exception v19

    .line 483
    :cond_4df
    :goto_4df
    return-void

    .line 426
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    .restart local v7       #hac:I
    :cond_4e0
    const-string v19, "OFF"

    goto :goto_491

    .line 441
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v7           #hac:I
    .restart local v17       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v18       #xmlEventType:I
    :cond_4e3
    :try_start_4e3
    const-string v19, "cfu_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_509

    .line 443
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfu_deactivation:Ljava/lang/String;
    :try_end_503
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e3 .. :try_end_503} :catch_4de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e3 .. :try_end_503} :catch_504
    .catch Ljava/io/IOException; {:try_start_4e3 .. :try_end_503} :catch_52a

    goto :goto_4a9

    .line 477
    .end local v17           #xml:Landroid/content/res/XmlResourceParser;
    .end local v18           #xmlEventType:I
    :catch_504
    move-exception v6

    .line 478
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_4df

    .line 444
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v18       #xmlEventType:I
    :cond_509
    :try_start_509
    const-string v19, "cfb_activation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_52f

    .line 446
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfb_activation:Ljava/lang/String;
    :try_end_529
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_509 .. :try_end_529} :catch_4de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_509 .. :try_end_529} :catch_504
    .catch Ljava/io/IOException; {:try_start_509 .. :try_end_529} :catch_52a

    goto :goto_4a9

    .line 479
    .end local v17           #xml:Landroid/content/res/XmlResourceParser;
    .end local v18           #xmlEventType:I
    :catch_52a
    move-exception v6

    .line 480
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4df

    .line 447
    .end local v6           #e:Ljava/io/IOException;
    .restart local v17       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v18       #xmlEventType:I
    :cond_52f
    :try_start_52f
    const-string v19, "cfb_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_551

    .line 449
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfb_deactivation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 450
    :cond_551
    const-string v19, "cfnry_activation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_573

    .line 452
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnry_activation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 453
    :cond_573
    const-string v19, "cfnry_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_595

    .line 455
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnry_deactivation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 456
    :cond_595
    const-string v19, "cfnrc_activation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5b7

    .line 458
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnrc_activation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 459
    :cond_5b7
    const-string v19, "cfnrc_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5d9

    .line 461
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 462
    :cond_5d9
    const-string v19, "cf_all_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5fb

    .line 464
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 465
    :cond_5fb
    const-string v19, "cw_activation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_61d

    .line 467
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    goto/16 :goto_4a9

    .line 468
    :cond_61d
    const-string v19, "cw_deactivation"

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4a9

    .line 470
    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;
    :try_end_63d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_52f .. :try_end_63d} :catch_4de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52f .. :try_end_63d} :catch_504
    .catch Ljava/io/IOException; {:try_start_52f .. :try_end_63d} :catch_52a

    goto/16 :goto_4a9
.end method

.method public onMMIComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 688
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 689
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 690
    .local v0, localPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 691
    return-void
.end method

.method public removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 3
    .parameter "aListener"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1250
    return-void
.end method

.method protected requestUpdateBluetoothIndication()V
    .registers 2

    .prologue
    .line 1173
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1175
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->updateInCallScreenAll()V

    .line 1179
    :cond_d
    :goto_d
    return-void

    .line 1177
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->requestUpdateBluetoothIndication()V

    goto :goto_d
.end method

.method resetInCallFragmentInstance(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    return-void
.end method

.method public resetmActiveSubscription()V
    .registers 2

    .prologue
    .line 1065
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 1066
    return-void
.end method

.method public resetmRingingSubscription()V
    .registers 2

    .prologue
    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 1080
    return-void
.end method

.method public setCDMACallReallyConnected(Z)V
    .registers 2
    .parameter "isCDMACallReallyConnected"

    .prologue
    .line 1100
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->isCDMACallReallyConnected:Z

    .line 1101
    return-void
.end method

.method setDefaultPhone(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 996
    invoke-static {p1}, Lcom/android/phone/MSimPhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 997
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 998
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 999
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 1000
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mDefaultSubscription:I

    .line 1001
    return-void
.end method

.method public setGsmCallRemoteAnswered(Z)V
    .registers 2
    .parameter "isGsmCallRemoteAnswered"

    .prologue
    .line 1111
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->isGsmCallRemoteAnswered:Z

    .line 1112
    return-void
.end method

.method setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V
    .registers 5
    .parameter "subscription"
    .parameter "f"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    return-void
.end method

.method setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 1117
    return-void
.end method

.method public setInvalidateInCallControls(Z)V
    .registers 2
    .parameter "invalidateInCallControls"

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneApp;->mInvalidateInCallControls:Z

    .line 1304
    return-void
.end method

.method public setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 3
    .parameter "aListener"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mSubListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    return-void
.end method

.method public setmActiveSubscription(I)V
    .registers 2
    .parameter "activeSubscription"

    .prologue
    .line 1058
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mActiveSubscription:I

    .line 1060
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->notifyListener()V

    .line 1062
    return-void
.end method

.method public setmRingingSubscription(I)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 1071
    iput p1, p0, Lcom/android/phone/MSimPhoneApp;->mRingingSub:I

    .line 1072
    return-void
.end method

.method protected updateAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    .line 1047
    iget-object v2, p0, Lcom/android/phone/MSimPhoneApp;->mActiveFragments:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1048
    .local v0, f:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/InCallFragment;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2}, Lcom/android/phone/InCallFragment;->updateAfterRadioTechnologyChange()V

    goto :goto_a

    .line 1050
    .end local v0           #f:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/phone/InCallFragment;>;"
    :cond_26
    return-void
.end method

.method updateInCallScreen()V
    .registers 3

    .prologue
    .line 1277
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_12

    .line 1278
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_11

    .line 1279
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneApp;->getmActiveSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen_DSDA;->updateFragmentScreen(I)V

    .line 1284
    :cond_11
    :goto_11
    return-void

    .line 1282
    :cond_12
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_11
.end method

.method updateInCallScreenAll()V
    .registers 2

    .prologue
    .line 1288
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_e

    .line 1289
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_d

    .line 1290
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->updateAllScreenAll()V

    .line 1295
    :cond_d
    :goto_d
    return-void

    .line 1293
    :cond_e
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_d
.end method

.method protected updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1164
    sget-boolean v0, Lcom/android/phone/MSimPhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_15

    .line 1165
    iget-object v0, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v0, :cond_12

    .line 1166
    iget-object v1, p0, Lcom/android/phone/MSimPhoneApp;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen_DSDA;->updateKeyguardPolicy(Z)V

    .line 1170
    :cond_12
    :goto_12
    return-void

    .line 1166
    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    .line 1168
    :cond_15
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_12
.end method
