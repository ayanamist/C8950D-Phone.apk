.class public Lcom/android/phone/MSimCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MSimCallNotifier.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimCallNotifier"

.field private static final VDBG:Z = false

.field private static final XDIVERT_STATUS:Ljava/lang/String; = "xdivert_status_key"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimCallNotifier;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 6
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallNotifier;ZLcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .registers 6
    .parameter "sub"

    .prologue
    .line 147
    const-string v1, "MSimCallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneStateListener: SUBSCRIPTION == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/android/phone/MSimCallNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimCallNotifier$1;-><init>(Lcom/android/phone/MSimCallNotifier;I)V

    .line 162
    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/MSimCallNotifier;
    .registers 12
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 51
    const-class v6, Lcom/android/phone/MSimCallNotifier;

    monitor-enter v6

    .line 52
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_19

    .line 53
    new-instance v0, Lcom/android/phone/MSimCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MSimCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 57
    :goto_13
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MSimCallNotifier;

    monitor-exit v6

    return-object v0

    .line 55
    :cond_19
    const-string v0, "MSimCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 58
    :catchall_34
    move-exception v0

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 166
    const-string v0, "MSimCallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_c

    .line 101
    const-string v0, "MSimCallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_b
    return-void

    .line 105
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateMwi(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_b
.end method


# virtual methods
.method protected getXDivertStatus()Z
    .registers 6

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "xdivert_status_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 133
    .local v1, status:Z
    const-string v2, "MSimCallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXDivertStatus status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 75
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 77
    :goto_8
    return-void

    .line 71
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 72
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_8

    .line 69
    nop

    :pswitch_data_1a
    .packed-switch 0x15
        :pswitch_9
    .end packed-switch
.end method

.method listen()V
    .registers 5

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 83
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 84
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 88
    :cond_23
    return-void
.end method

.method protected onCfiChanged(ZI)V
    .registers 4
    .parameter "visible"
    .parameter "subscription"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateCfi(ZI)V

    .line 121
    return-void
.end method

.method protected onXDivertChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimNotificationMgr;->updateXDivert(Z)V

    .line 126
    return-void
.end method

.method sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "delayMillis"
    .parameter "phone"

    .prologue
    .line 114
    const/16 v1, 0x15

    invoke-static {p0, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    return-void
.end method

.method protected setXDivertStatus(Z)V
    .registers 5
    .parameter "status"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "xdivert_status_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method
