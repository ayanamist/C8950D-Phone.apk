.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$DataStateReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_AUTO_SELECT_KEY:Ljava/lang/String; = "button_auto_select_key"

.field private static final BUTTON_SRCH_NETWRKS_KEY:Ljava/lang/String; = "button_srch_netwrks_key"

.field private static final DBG:Z = false

.field private static final DIALOG_NETWORK_AUTO_SELECT:I = 0x12c

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_DISABLE_DATA:I = 0x258

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_COMPLETED:I = 0x3e8

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_START_NETWORK_SCAN:I = 0x1f4

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static final TIMEOUT_NETWORK_SELECTION:I = 0x7530

.field private static final XML_ELEMENT_ITEM_NAME:Ljava/lang/String; = "search"

.field private static final XML_ELEMENT_TAG_NAME:Ljava/lang/String; = "OperatorName"

.field private static final XML_NAME:Ljava/lang/String; = "operator_name.xml"

.field private static final XML_PATH:Ljava/lang/String; = "/data/cust/xml"

.field private static display_name_list:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private haveDisabledDataBeforeSearching:Z

.field private haveSendNetworkScanEvent:Z

.field private mAutoSelect:Landroid/preference/Preference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchButton:Landroid/preference/Preference;

.field private showAlertDialog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 132
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 147
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 152
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 155
    const-string v0, "false"

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 317
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 338
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSearching()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearList()V
    .registers 4

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 816
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 818
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 819
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 628
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_b

    const v0, 0x7f0c00b2

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 629
    return-void

    .line 628
    :cond_b
    const v0, 0x7f0c00b0

    goto :goto_7
.end method

.method private displayNetworkQueryFailed(I)V
    .registers 6
    .parameter "error"

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 644
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method private displayNetworkSearching()V
    .registers 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 684
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 686
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "ex"

    .prologue
    .line 651
    if-eqz p1, :cond_26

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_26

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_26

    .line 655
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, status:Ljava/lang/String;
    :goto_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 661
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 663
    return-void

    .line 657
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #status:Ljava/lang/String;
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto :goto_1b
.end method

.method private displayNetworkSelectionSucceeded()V
    .registers 7

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 669
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 672
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .registers 6
    .parameter "networkStr"

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 635
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_1c

    .line 636
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 638
    :cond_1c
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ni"

    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 806
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 810
    :goto_e
    return-object v0

    .line 807
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 808
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 810
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private getOperatorNameFromCust(Ljava/io/File;)V
    .registers 11
    .parameter "file"

    .prologue
    .line 495
    const/4 v4, 0x0

    .line 496
    .local v4, mcc_mnc_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 497
    .local v0, display_name:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    .line 498
    const/4 v2, 0x0

    .line 500
    .local v2, in:Ljava/io/InputStream;
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_67
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_73

    .line 501
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 503
    .local v5, xml:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 505
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 506
    .local v6, xmlEventType:I
    :goto_1b
    const/4 v7, 0x1

    if-eq v6, v7, :cond_54

    .line 507
    const/4 v7, 0x2

    if-ne v6, v7, :cond_45

    const-string v7, "search"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 508
    const/4 v7, 0x0

    const-string v8, "mcc_mnc_name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    const/4 v7, 0x0

    const-string v8, "display_name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    sget-object v7, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_40
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1b

    .line 512
    :cond_45
    const/4 v7, 0x3

    if-ne v6, v7, :cond_40

    const-string v7, "OperatorName"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_88
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_51} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_51} :catch_8e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_51} :catch_8b

    move-result v7

    if-eqz v7, :cond_40

    .line 528
    :cond_54
    if-eqz v3, :cond_59

    .line 529
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    :cond_59
    move-object v2, v3

    .line 537
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #xmlEventType:I
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_5a
    :goto_5a
    return-void

    .line 531
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v5       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #xmlEventType:I
    :catch_5b
    move-exception v7

    move-object v2, v3

    .line 536
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_5a

    .line 517
    .end local v5           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #xmlEventType:I
    :catch_5e
    move-exception v7

    .line 528
    :goto_5f
    if-eqz v2, :cond_5a

    .line 529
    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_5a

    .line 531
    :catch_65
    move-exception v7

    goto :goto_5a

    .line 521
    :catch_67
    move-exception v1

    .line 522
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_7f

    .line 528
    if-eqz v2, :cond_5a

    .line 529
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_5a

    .line 531
    :catch_71
    move-exception v7

    goto :goto_5a

    .line 523
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_73
    move-exception v1

    .line 524
    .local v1, e:Ljava/io/IOException;
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7f

    .line 528
    if-eqz v2, :cond_5a

    .line 529
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_5a

    .line 531
    :catch_7d
    move-exception v7

    goto :goto_5a

    .line 526
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7f
    move-exception v7

    .line 528
    :goto_80
    if-eqz v2, :cond_85

    .line 529
    :try_start_82
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 535
    :cond_85
    :goto_85
    throw v7

    .line 531
    :catch_86
    move-exception v8

    goto :goto_85

    .line 526
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catchall_88
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_80

    .line 523
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8b
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_74

    .line 521
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8e
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_68

    .line 517
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_91
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_5f
.end method

.method private loadNetworksList()V
    .registers 4

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 694
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 697
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 698
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c03e1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03e2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03e3

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 719
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_43
    return-void

    .line 708
    :cond_44
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_4d

    .line 709
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 714
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_59

    .line 718
    :goto_54
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_43

    .line 715
    :catch_59
    move-exception v1

    goto :goto_54
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 832
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .registers 12
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 732
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 733
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    if-eqz v5, :cond_24

    .line 734
    const-string v5, "NetworkSetting, ended searching, reenable data."

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 735
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 737
    .local v1, cm:Landroid/net/ConnectivityManager;
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 738
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 739
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 749
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_24
    const/16 v5, 0xc8

    :try_start_26
    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_3c

    .line 755
    :goto_29
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 756
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 758
    if-eqz p2, :cond_41

    .line 760
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 761
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 793
    :cond_3b
    :goto_3b
    return-void

    .line 751
    :catch_3c
    move-exception v2

    .line 752
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 763
    .end local v2           #e:Ljava/lang/Exception;
    :cond_41
    if-eqz p1, :cond_b7

    .line 764
    invoke-direct {p0, v8}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 769
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    .line 770
    .local v4, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 773
    .local v0, carrier:Landroid/preference/Preference;
    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    if-eqz v5, :cond_af

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_af

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_af

    const-string v5, ""

    sget-object v6, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    .line 777
    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 782
    :goto_a1
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 783
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 784
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 779
    :cond_af
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a1

    .line 790
    .end local v0           #carrier:Landroid/preference/Preference;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_b7
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto :goto_3b
.end method

.method private selectNetworkAutomatic()V
    .registers 4

    .prologue
    const/16 v2, 0x12c

    .line 823
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_9

    .line 824
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 827
    :cond_9
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 829
    return-void
.end method


# virtual methods
.method public getNormalizedCarrierName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .registers 4
    .parameter "ni"

    .prologue
    .line 405
    if-eqz p1, :cond_28

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 384
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 385
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    if-eqz v2, :cond_24

    .line 386
    const-string v2, "NetworkSetting,ended searching by cancel, reenable data."

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 387
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 389
    .local v0, cm:Landroid/net/ConnectivityManager;
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->haveDisabledDataBeforeSearching:Z

    .line 390
    iput-boolean v4, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 391
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 397
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2f

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 402
    return-void

    .line 398
    :catch_2f
    move-exception v1

    .line 399
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 158
    const/4 v3, -0x1

    if-ne p2, v3, :cond_65

    .line 159
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 162
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkSetting, mNetworkInfo state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 164
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-eq v3, v4, :cond_4b

    .line 165
    const-string v3, "NetworkSetting, currently no data connectivity exist,start network scan immediately"

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/NetworkSetting;->haveSendNetworkScanEvent:Z

    .line 167
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_4b
    const-string v3, "NetworkSetting, Ok button clicked, send disable data msg."

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x258

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 171
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 172
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v3, :cond_65

    .line 173
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 176
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    .end local v2           #msg:Landroid/os/Message;
    :cond_65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 415
    const v5, 0x7f050003

    invoke-virtual {p0, v5}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 417
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 418
    .local v4, subscription:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 420
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "subscription"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    iput-object p0, p0, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "list_networks_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 429
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 431
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "button_srch_netwrks_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 432
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "button_auto_select_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 434
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/cust/xml"

    const-string v6, "operator_name.xml"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v0, file:Ljava/io/File;
    sget-object v5, Lcom/android/phone/NetworkSetting;->display_name_list:Ljava/util/HashMap;

    if-nez v5, :cond_85

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 436
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->getOperatorNameFromCust(Ljava/io/File;)V

    .line 441
    :cond_85
    const-string v5, "ro.config.hw_show_alert_dialog"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    .line 442
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 443
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v5, Lcom/android/phone/NetworkSetting$DataStateReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/NetworkSetting$DataStateReceiver;-><init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 446
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_ad
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 455
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 458
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 461
    new-instance v5, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v5, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v5, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 484
    .local v3, intentFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_da
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 582
    const/16 v1, 0x64

    if-eq p1, v1, :cond_e

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_e

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4f

    .line 584
    :cond_e
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 585
    .local v0, dialog:Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_52

    .line 604
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 606
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 608
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 614
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_2d
    return-object v0

    .line 592
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_2e
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 594
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2d

    .line 597
    :sswitch_3a
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 599
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2d

    .line 614
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2d

    .line 585
    nop

    :sswitch_data_52
    .sparse-switch
        0x64 -> :sswitch_2e
        0x12c -> :sswitch_3a
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 565
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    :cond_e
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->showAlertDialog:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 572
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 576
    :cond_1d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 577
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 547
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 549
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, handled:Z
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v4, :cond_a

    .line 354
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    .line 355
    const/4 v0, 0x1

    .line 376
    :goto_9
    return v0

    .line 356
    :cond_a
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v4, :cond_13

    .line 357
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    .line 358
    const/4 v0, 0x1

    goto :goto_9

    .line 360
    :cond_13
    move-object v3, p2

    .line 362
    .local v3, selectedCarrier:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, networkStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 366
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v5, v4, v1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 368
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 619
    const/16 v0, 0x64

    if-eq p1, v0, :cond_c

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_14

    .line 623
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 625
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 543
    return-void
.end method
