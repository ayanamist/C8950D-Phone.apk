.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 405
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 406
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler: ignoring message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; we\'re destroyed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 595
    :cond_2f
    :goto_2f
    return-void

    .line 409
    :cond_30
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 410
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler: handling message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while not in foreground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 418
    :cond_5c
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_216

    .line 592
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandler: unexpected message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 420
    :sswitch_7a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_2f

    .line 424
    :sswitch_84
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-static {v5, v4}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2f

    .line 428
    :sswitch_8e
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-static {v5, v4}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2f

    .line 440
    :sswitch_98
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    .line 446
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/InCallTouchUi;->refreshAudioModePopup()V

    goto :goto_2f

    .line 451
    :sswitch_a7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    goto/16 :goto_2f

    .line 455
    :sswitch_b2
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v4}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2f

    .line 466
    :sswitch_bd
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 467
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 469
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 470
    .local v3, phoneType:I
    if-ne v3, v9, :cond_da

    .line 471
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v7, v7}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_2f

    .line 472
    :cond_da
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 473
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v4, v5, :cond_2f

    .line 474
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_f2

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Got MMI_COMPLETE, finishing InCallScreen..."

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 475
    :cond_f2
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_2f

    .line 481
    .end local v1           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #phoneType:I
    :sswitch_f9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-char v6, v6

    invoke-static {v5, v4, v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_2f

    .line 485
    :sswitch_107
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 489
    :sswitch_10e
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 493
    :sswitch_115
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v4}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2f

    .line 502
    :sswitch_120
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v8}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_2f

    .line 512
    :sswitch_129
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 516
    :sswitch_130
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_13d

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Received PHONE_CDMA_CALL_WAITING event ..."

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 517
    :cond_13d
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 520
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2f

    .line 523
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    .line 524
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_2f

    .line 529
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_159
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_2f

    .line 530
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_2f

    .line 535
    :sswitch_16c
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_2f

    .line 536
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_2f

    .line 541
    :sswitch_17f
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 542
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_194

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "- DISMISSING mPausePromptDialog."

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 543
    :cond_194
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 544
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4, v7}, Lcom/android/phone/InCallScreen;->access$1202(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_2f

    .line 549
    :sswitch_1a4
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v8, v4, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 550
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 554
    :sswitch_1b3
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 558
    :sswitch_1ba
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 562
    :sswitch_1c1
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 567
    :sswitch_1c8
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1d5

    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v5, "Received EVENT_LINE_CONTROL_INFO event ..."

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 570
    :cond_1d5
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 571
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)Landroid/os/Vibrator;

    move-result-object v4

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 576
    :cond_1e8
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4, v5}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 577
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_2f

    .line 578
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_2f

    .line 585
    :sswitch_20a
    sget-boolean v4, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v4, :cond_2f

    .line 586
    iget-object v4, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2f

    .line 418
    nop

    :sswitch_data_216
    .sparse-switch
        0x33 -> :sswitch_a7
        0x34 -> :sswitch_bd
        0x35 -> :sswitch_b2
        0x65 -> :sswitch_84
        0x66 -> :sswitch_8e
        0x67 -> :sswitch_98
        0x68 -> :sswitch_f9
        0x6a -> :sswitch_107
        0x6b -> :sswitch_10e
        0x6c -> :sswitch_115
        0x6e -> :sswitch_7a
        0x70 -> :sswitch_120
        0x72 -> :sswitch_129
        0x73 -> :sswitch_130
        0x76 -> :sswitch_159
        0x77 -> :sswitch_16c
        0x78 -> :sswitch_17f
        0x79 -> :sswitch_1a4
        0x7a -> :sswitch_1b3
        0x7b -> :sswitch_1ba
        0x7c -> :sswitch_1c1
        0x7d -> :sswitch_1c8
        0x3e9 -> :sswitch_20a
    .end sparse-switch
.end method
