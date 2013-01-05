.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Ringer"

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final PLAY_RING_ONCE:I = 0x1

.field private static final STOP_RING:I = 0x3

.field private static final VIBRATE_LENGTH:I = 0x3e8

.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field private mRingingSubscription:I

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-wide/16 v1, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 70
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 71
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 95
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 97
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/Ringer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/phone/Ringer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .registers 5
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 84
    :try_start_3
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_12

    .line 85
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 89
    :goto_e
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 87
    :cond_12
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 90
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private isRingtonePlaying()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 133
    monitor-enter p0

    .line 134
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_e
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 136
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private isVibrating()Z
    .registers 2

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 147
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 419
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method private makeLooper()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1a

    .line 342
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 343
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 403
    :cond_1a
    return-void
.end method

.method private ringInternal(I)V
    .registers 9
    .parameter "subscription"

    .prologue
    const-wide/16 v4, 0x0

    .line 169
    monitor-enter p0

    .line 171
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 172
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_5e

    .line 180
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v1, :cond_38

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 182
    new-instance v1, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 183
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_33

    const-string v1, "- starting vibrator..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 184
    :cond_33
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 186
    :cond_38
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 189
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_60

    .line 190
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_52

    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 191
    :cond_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_15 .. :try_end_53} :catchall_80

    .line 221
    :goto_53
    return-void

    .line 174
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_80
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_15

    .line 176
    :catch_5e
    move-exception v1

    goto :goto_15

    .line 194
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_60
    :try_start_60
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_69

    const/4 v1, -0x1

    if-eq p1, v1, :cond_69

    .line 195
    iput p1, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 197
    :cond_69
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 198
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_83

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 200
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :goto_7e
    monitor-exit p0

    goto :goto_53

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_80
    move-exception v1

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_80

    throw v1

    .line 205
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_83
    :try_start_83
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_b4

    .line 208
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_a8

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delaying ring by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 211
    :cond_a8
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7e

    .line 217
    :cond_b4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_ba
    .catchall {:try_start_83 .. :try_end_ba} :catchall_80

    goto :goto_7e
.end method


# virtual methods
.method public getmRingingSubscription()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    return v0
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 124
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method ring()V
    .registers 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "ring()..."

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 163
    :cond_9
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/phone/Ringer;->ringInternal(I)V

    .line 165
    return-void
.end method

.method ring(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "ring(int subscription)..."

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 154
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->ringInternal(I)V

    .line 155
    return-void
.end method

.method public seekTo(I)V
    .registers 9
    .parameter "positon"

    .prologue
    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "seekTo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 409
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 410
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 416
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_27
    return-void

    .line 411
    :catch_28
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Ringer"

    const-string v3, "method not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 335
    if-eqz p1, :cond_4

    .line 336
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 338
    :cond_4
    return-void
.end method

.method shouldVibrate()Z
    .registers 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 229
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    return v1
.end method

.method stopRing()V
    .registers 5

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_1
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_6a

    .line 251
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_6d

    .line 257
    :goto_11
    :try_start_11
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_18

    .line 258
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    .line 261
    :cond_18
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_60

    .line 262
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 270
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 271
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 276
    .end local v0           #msg:Landroid/os/Message;
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_59

    .line 277
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_53

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 278
    :cond_53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 282
    :cond_59
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 283
    monitor-exit p0

    .line 284
    return-void

    .line 273
    :cond_60
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_46

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_46

    .line 283
    :catchall_6a
    move-exception v1

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_6a

    throw v1

    .line 252
    :catch_6d
    move-exception v1

    goto :goto_11
.end method

.method stopRing(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/phone/Ringer;->mRingingSubscription:I

    if-eq p1, v0, :cond_5

    .line 239
    :goto_4
    return-void

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->stopRing()V

    goto :goto_4
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_b
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method
