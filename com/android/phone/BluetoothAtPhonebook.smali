.class public Lcom/android/phone/BluetoothAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field private static final VISIBLE_PHONEBOOK_WHERE:Ljava/lang/String; = "in_visible_group=1"


# instance fields
.field private mAccessRejected:Z

.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private final mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .registers 8
    .parameter "context"
    .parameter "handsfree"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 97
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 99
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 107
    iput-boolean v4, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/phone/BluetoothAtPhonebook;->mAccessRejected:Z

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->checkAccessPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtPhonebook;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothAtPhonebook;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mAccessRejected:Z

    return v0
.end method

.method private checkAccessPermission()Z
    .registers 6

    .prologue
    .line 493
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 495
    .local v1, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v2

    .line 497
    .local v2, trust:Z
    if-eqz v2, :cond_12

    .line 498
    const/4 v3, 0x1

    .line 510
    :goto_11
    return v3

    .line 501
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 508
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 510
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .registers 4
    .parameter "currSize"

    .prologue
    const/16 v0, 0x64

    .line 383
    monitor-enter p0

    if-ge p1, v0, :cond_e

    .line 384
    .local v0, maxSize:I
    :goto_5
    :try_start_5
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 385
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    move-result v1

    monitor-exit p0

    return v1

    .end local v0           #maxSize:I
    :cond_e
    move v0, p1

    .line 383
    goto :goto_5

    .restart local v0       #maxSize:I
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 514
    packed-switch p0, :pswitch_data_12

    .line 527
    const-string v0, "O"

    :goto_5
    return-object v0

    .line 516
    :pswitch_6
    const-string v0, "H"

    goto :goto_5

    .line 518
    :pswitch_9
    const-string v0, "M"

    goto :goto_5

    .line 520
    :pswitch_c
    const-string v0, "W"

    goto :goto_5

    .line 523
    :pswitch_f
    const-string v0, "F"

    goto :goto_5

    .line 514
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .registers 6
    .parameter "pb"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 309
    monitor-enter p0

    if-nez p1, :cond_7

    move-object v0, v1

    .line 322
    :cond_5
    :goto_5
    monitor-exit p0

    return-object v0

    .line 312
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .line 313
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_17

    .line 314
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    .line 316
    .restart local v0       #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :cond_17
    if-nez p2, :cond_1d

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_5

    .line 317
    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_25

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v1

    .line 318
    goto :goto_5

    .line 309
    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 532
    const-string v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method

.method private processCpbrCommand()Landroid/bluetooth/AtCommandResult;
    .registers 18

    .prologue
    .line 401
    const-string v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 402
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 486
    :cond_12
    :goto_12
    return-object v15

    .line 406
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v13

    .line 407
    .local v13, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v13, :cond_2a

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v15

    goto :goto_12

    .line 415
    :cond_2a
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_5a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_5a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_5a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_5a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_61

    .line 417
    :cond_5a
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_12

    .line 421
    :cond_61
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 422
    .local v15, result:Landroid/bluetooth/AtCommandResult;
    const/4 v8, -0x1

    .line 423
    .local v8, errorDetected:I
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 424
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .local v9, index:I
    :goto_77
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v9, v1, :cond_12

    .line 425
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 426
    .local v12, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 427
    .local v10, name:Ljava/lang/String;
    const/16 v16, -0x1

    .line 428
    .local v16, type:I
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a2

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 436
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_c4

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 438
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 439
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 441
    :cond_c1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 448
    .end local v7           #c:Landroid/database/Cursor;
    :cond_c4
    :goto_c4
    if-nez v10, :cond_c8

    const-string v10, ""

    .line 449
    :cond_c8
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 450
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_db

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 452
    :cond_db
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_103

    .line 453
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 457
    :cond_103
    if-nez v12, :cond_107

    const-string v12, ""

    .line 458
    :cond_107
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v14

    .line 460
    .local v14, regionType:I
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 461
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 462
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_122

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 463
    :cond_122
    const-string v1, "-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 465
    const-string v12, ""

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 471
    :cond_137
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 472
    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v11

    .line 473
    .local v11, nameByte:[B
    if-nez v11, :cond_1ac

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 480
    .end local v11           #nameByte:[B
    :cond_15c
    :goto_15c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 482
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 424
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_77

    .line 446
    .end local v14           #regionType:I
    :cond_1a2
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c4

    .line 476
    .restart local v11       #nameByte:[B
    .restart local v14       #regionType:I
    :cond_1ac
    new-instance v10, Ljava/lang/String;

    .end local v10           #name:Ljava/lang/String;
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_15c
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    .registers 11
    .parameter "pb"
    .parameter "pbr"

    .prologue
    const/4 v7, 0x0

    .line 327
    monitor-enter p0

    const/4 v6, 0x1

    .line 329
    .local v6, ancillaryPhonebook:Z
    :try_start_3
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 330
    const/4 v6, 0x0

    .line 331
    const-string v3, "in_visible_group=1"

    .line 342
    .local v3, where:Ljava/lang/String;
    :goto_e
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 343
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 347
    :cond_1a
    if-eqz v6, :cond_99

    .line 348
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 351
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_d1

    if-nez v0, :cond_59

    move v0, v7

    .line 366
    .end local v3           #where:Ljava/lang/String;
    :goto_34
    monitor-exit p0

    return v0

    .line 332
    :cond_36
    :try_start_36
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 333
    const-string v3, "type=2"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .line 334
    .end local v3           #where:Ljava/lang/String;
    :cond_41
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 335
    const-string v3, "type=1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .line 336
    .end local v3           #where:Ljava/lang/String;
    :cond_4c
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 337
    const-string v3, "type=3"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_e

    .end local v3           #where:Ljava/lang/String;
    :cond_57
    move v0, v7

    .line 339
    goto :goto_34

    .line 353
    .restart local v3       #where:Ljava/lang/String;
    :cond_59
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 354
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 355
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    .line 365
    :goto_69
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    goto :goto_34

    .line 357
    :cond_99
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 359
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_b2

    move v0, v7

    goto :goto_34

    .line 361
    :cond_b2
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 362
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 363
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_d0
    .catchall {:try_start_36 .. :try_end_d0} :catchall_d1

    goto :goto_69

    .line 327
    .end local v3           #where:Ljava/lang/String;
    :catchall_d1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 389
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 390
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 391
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 392
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 393
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 394
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public getLastDialledNumber()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 113
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 114
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1c

    .line 127
    :goto_1b
    return-object v4

    .line 119
    :cond_1c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_26

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 123
    :cond_26
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 124
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 125
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 127
    goto :goto_1b
.end method

.method handleAccessPermissionResult(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 273
    iget-boolean v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    if-nez v3, :cond_7

    .line 301
    :goto_6
    return-void

    .line 277
    :cond_7
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    .line 282
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 284
    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_44

    .line 287
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 288
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 289
    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 292
    :cond_31
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 293
    .local v0, cpbrResult:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 299
    .end local v0           #cpbrResult:Landroid/bluetooth/AtCommandResult;
    .end local v2           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_3c
    :goto_3c
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 300
    iput-boolean v6, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    goto :goto_6

    .line 295
    :cond_44
    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mAccessRejected:Z

    .line 296
    const-string v3, "ERROR"

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    goto :goto_3c
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .registers 4
    .parameter "parser"

    .prologue
    .line 132
    const-string v0, "+CSCS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$1;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 160
    const-string v0, "+CPBS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$2;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 199
    const-string v0, "+CPBR"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$3;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 270
    return-void
.end method

.method declared-synchronized resetAtState()V
    .registers 2

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 373
    monitor-exit p0

    return-void

    .line 370
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
