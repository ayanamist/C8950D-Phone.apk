.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final DISCONNECT:I = 0x3

.field public static final MAX_NUM_RETRIES:I = 0x6

.field private static final RETRY_TIMEOUT:I = 0x4

.field private static final SERVICE_STATE_CHANGED:I = 0x2

.field private static final START_SEQUENCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHelper"

.field public static final TIME_BETWEEN_RETRIES:J = 0x1388L

.field public static final WAKE_LOCK_TIMEOUT:J = 0x493e0L


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .registers 3
    .parameter "callController"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    const-string v0, "EmergencyCallHelper constructor..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    .line 80
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 81
    return-void
.end method

.method private cancelRetryTimer()V
    .registers 2

    .prologue
    .line 541
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 542
    return-void
.end method

.method private cleanup()V
    .registers 2

    .prologue
    .line 508
    const-string v0, "cleanup()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 517
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 518
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 519
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 522
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2a

    .line 523
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 524
    const-string v0, "- releasing wake lock"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 527
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 532
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 533
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 578
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 272
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 273
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 274
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: connection \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 277
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_47

    .line 280
    const-string v2, "- onDisconnect: OUT_OF_SERVICE, need to retry..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    .line 296
    :goto_46
    return-void

    .line 288
    :cond_47
    const-string v2, "==> Disconnect event; clean up..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_46
.end method

.method private onRetryTimeout()V
    .registers 5

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 303
    .local v0, phoneState:Lcom/android/internal/telephony/Phone$State;
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 304
    .local v1, serviceState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRetryTimeout():  phone state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumRetriesSoFar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 316
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_49

    .line 317
    const-string v2, "- onRetryTimeout: Call is active!  Cleaning up..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 354
    :goto_48
    return-void

    .line 322
    :cond_49
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5b

    .line 327
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 336
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 353
    :goto_55
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    goto :goto_48

    .line 342
    :cond_5b
    const-string v2, "- Trying (again) to turn on the radio..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 348
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_55
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 216
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 217
    .local v1, state:Landroid/telephony/ServiceState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged()...  new state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    :cond_2b
    const/4 v0, 0x1

    .line 231
    .local v0, okToCall:Z
    :goto_2c
    if-eqz v0, :cond_44

    .line 233
    const-string v2, "onServiceStateChanged: ok to call!"

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHelper;->clearProgressIndication()V

    .line 245
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 249
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 262
    :goto_41
    return-void

    .line 228
    .end local v0           #okToCall:Z
    :cond_42
    const/4 v0, 0x0

    goto :goto_2c

    .line 260
    .restart local v0       #okToCall:Z
    :cond_44
    const-string v2, "onServiceStateChanged: not ready to call yet, keep waiting..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_41
.end method

.method private placeEmergencyCall()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 403
    const-string v0, "placeEmergencyCall()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 412
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v7

    .line 413
    .local v7, sub:I
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 415
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- placing call to \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v6

    .line 422
    .local v6, callStatus:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- PhoneUtils.placeCall() returned status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 427
    packed-switch v6, :pswitch_data_84

    .line 436
    const-string v0, "EmergencyCallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v8, 0x0

    .line 441
    .local v8, success:Z
    :goto_71
    if-eqz v8, :cond_7b

    .line 442
    const-string v0, "==> Success from PhoneUtils.placeCall()!"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 455
    :goto_78
    return-void

    .line 429
    .end local v8           #success:Z
    :pswitch_79
    const/4 v8, 0x1

    .line 430
    .restart local v8       #success:Z
    goto :goto_71

    .line 450
    :cond_7b
    const-string v0, "==> Failure."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_78

    .line 427
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_79
    .end packed-switch
.end method

.method private powerOnRadio()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string v1, "- powerOnRadio()..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 373
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3f

    .line 375
    const-string v1, "==> Turning off airplane mode..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    .end local v0           #intent:Landroid/content/Intent;
    :goto_3e
    return-void

    .line 390
    :cond_3f
    const-string v1, "==> (Apparently) not in airplane mode; manually powering radio on..."

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_3e
.end method

.method private registerForDisconnect()V
    .registers 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    return-void
.end method

.method private registerForServiceStateChanged()V
    .registers 4

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 550
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .registers 3

    .prologue
    .line 464
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleRetryOrBailOut()...  mNumRetriesSoFar is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_33

    .line 468
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 474
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 484
    :goto_32
    return-void

    .line 477
    :cond_33
    const-string v0, "- Scheduling another retry..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 480
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_32
.end method

.method private startRetryTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 537
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    return-void
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSequenceInternal(): msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 159
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startSequenceInternal: Got mNumber: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 167
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v1, :cond_4e

    .line 168
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 174
    :cond_4e
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 175
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    const-string v1, "- startSequenceInternal: acquiring wake lock"

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 188
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 196
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 202
    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 206
    return-void
.end method

.method private unregisterForDisconnect()V
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 569
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 570
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 555
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 557
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 558
    return-void
.end method


# virtual methods
.method protected clearProgressIndication()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 589
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 99
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1d
    return-void

    .line 87
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_1d

    .line 90
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_1d

    .line 93
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_1d

    .line 96
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout()V

    goto :goto_1d

    .line 85
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method protected setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 4
    .parameter "status"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 593
    return-void
.end method

.method protected setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 585
    return-void
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .registers 5
    .parameter "number"

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;I)V
    .registers 6
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method
