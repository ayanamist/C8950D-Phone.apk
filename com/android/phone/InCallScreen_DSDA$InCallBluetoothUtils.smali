.class Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
.super Ljava/lang/Object;
.source "InCallScreen_DSDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InCallBluetoothUtils"
.end annotation


# static fields
.field private static mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field protected mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field protected mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 2299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2536
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils$1;-><init>(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2300
    iget-object v0, p1, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 2303
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2a

    .line 2307
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2308
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2315
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mContext:Landroid/content/Context;

    .line 2316
    :cond_2a
    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private dumpBluetoothState()V
    .registers 6

    .prologue
    .line 2438
    const-string v3, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= isBluetoothAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= isBluetoothAudioConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnectedOrPending()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2444
    :try_start_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/phone/PhoneApp;

    check-cast v3, Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_77} :catch_e6

    .line 2450
    :goto_77
    const-string v3, "="

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2451
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_f3

    .line 2452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2453
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_ed

    .line 2454
    iget-object v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2456
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e5

    .line 2457
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2458
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= BluetoothHeadset.State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    .line 2468
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_e5
    :goto_e5
    return-void

    .line 2446
    :catch_e6
    move-exception v2

    .line 2447
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v3, "= PhoneApp.showBluetoothIndication: false"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    goto :goto_77

    .line 2463
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_ed
    const-string v3, "= mBluetoothHeadset is null"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    goto :goto_e5

    .line 2466
    :cond_f3
    const-string v3, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->log(Ljava/lang/String;)V

    goto :goto_e5
.end method

.method public static getInstance(Lcom/android/phone/InCallScreen_DSDA;)Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
    .registers 2
    .parameter "context"

    .prologue
    .line 2293
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    if-nez v0, :cond_b

    .line 2294
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;-><init>(Lcom/android/phone/InCallScreen_DSDA;)V

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    .line 2296
    :cond_b
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mInstance:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2533
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_f

    .line 2550
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2553
    :cond_f
    return-void
.end method

.method connectBluetoothAudio()V
    .registers 3

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 2473
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 2481
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    .line 2482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionRequestTime:J

    .line 2483
    return-void
.end method

.method disconnectBluetoothAudio()V
    .registers 2

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 2526
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 2528
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    .line 2529
    return-void
.end method

.method isBluetoothAudioConnected()Z
    .registers 3

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_6

    .line 2392
    const/4 v0, 0x0

    .line 2396
    :goto_5
    return v0

    .line 2394
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 2396
    .local v0, isAudioOn:Z
    goto :goto_5
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2410
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2434
    :cond_8
    :goto_8
    return v2

    .line 2418
    :cond_9
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_1f

    .line 2419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 2421
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_8

    .line 2428
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 2429
    goto :goto_8

    .end local v0           #timeSinceRequest:J
    :cond_1f
    move v2, v3

    .line 2434
    goto :goto_8
.end method

.method isBluetoothAvailable()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2346
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_7

    move v2, v3

    .line 2383
    :cond_6
    :goto_6
    return v2

    .line 2367
    :cond_7
    const/4 v2, 0x0

    .line 2368
    .local v2, isConnected:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_6

    .line 2369
    iget-object v4, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2371
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 2372
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2373
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public toggleBluetooth()V
    .registers 4

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2500
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2501
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 2521
    :goto_f
    return-void

    .line 2510
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2511
    iget-object v0, p0, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2514
    :cond_1f
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->connectBluetoothAudio()V

    goto :goto_f

    .line 2519
    :cond_23
    const-string v0, "InCallScreen"

    const-string v1, "toggleBluetooth(): bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
