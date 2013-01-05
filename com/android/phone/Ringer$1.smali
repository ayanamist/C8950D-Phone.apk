.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_f0

    .line 400
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 349
    :pswitch_8
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "mRingHandler: PLAY_RING_ONCE..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 350
    :cond_13
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_77

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_77

    .line 352
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 355
    :cond_3f
    sget-object v1, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    if-eqz v1, :cond_4f

    .line 356
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 363
    :cond_4f
    if-nez v0, :cond_68

    sget-object v1, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    if-eqz v1, :cond_68

    .line 365
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 366
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 369
    :cond_68
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 370
    const/4 v1, 0x3

    :try_start_6c
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_76

    .line 371
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 373
    :cond_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_b3

    .line 375
    :cond_77
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 376
    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7

    .line 377
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 379
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->seekTo(I)V

    .line 381
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 382
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 383
    :try_start_98
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_ad

    .line 384
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$302(Lcom/android/phone/Ringer;J)J

    .line 386
    :cond_ad
    monitor-exit v2

    goto/16 :goto_7

    :catchall_b0
    move-exception v1

    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_98 .. :try_end_b2} :catchall_b0

    throw v1

    .line 373
    :catchall_b3
    move-exception v1

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v1

    .line 390
    :pswitch_b6
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v1, "mRingHandler: STOP_RING..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    .line 391
    :cond_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 392
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_d3

    .line 393
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 397
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_7

    .line 395
    :cond_d3
    invoke-static {}, Lcom/android/phone/Ringer;->access$100()Z

    move-result v1

    if-eqz v1, :cond_ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Ljava/lang/String;)V

    goto :goto_ca

    .line 347
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_b6
    .end packed-switch
.end method
