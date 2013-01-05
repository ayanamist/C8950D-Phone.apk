.class public Lcom/android/phone/XDivertCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "XDivertCheckBoxPreference.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XDivertCheckBoxPreference"

.field private static final MESSAGE_GET_CALL_WAITING:I = 0x3

.field private static final MESSAGE_GET_CFNRC:I = 0x2

.field private static final MESSAGE_SET_CALL_WAITING:I = 0x5

.field private static final MESSAGE_SET_CFNRC:I = 0x4

.field private static final REVERT_SET_CALL_WAITING:I = 0x7

.field private static final REVERT_SET_CFNRC:I = 0x6

.field private static final START:I = 0x8

.field private static final STOP:I = 0x9

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1


# instance fields
.field private final DBG:Z

.field mAction:I

.field mCFLine1Number:[Ljava/lang/String;

.field private mCallNotif:Lcom/android/phone/MSimCallNotifier;

.field private final mGetOptionComplete:Landroid/os/Handler;

.field mLine1Number:[Ljava/lang/String;

.field mNumPhones:I

.field mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field mReason:I

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field mSub1CallWaiting:Z

.field mSub2CallWaiting:Z

.field mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mXDivertUtility:Lcom/android/phone/XDivertUtility;

.field mXdivertStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->DBG:Z

    .line 264
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$4;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$5;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$5;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    .line 308
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$6;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$6;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method private handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .registers 12
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/16 v5, 0x190

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 322
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 324
    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v5, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 326
    invoke-direct {p0, v8, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 357
    :cond_16
    :goto_16
    return-void

    .line 327
    :cond_17
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    .line 328
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 329
    invoke-direct {p0, v8, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_16

    .line 331
    :cond_26
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v4

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 332
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v0, :cond_35

    .line 334
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_16

    .line 336
    :cond_35
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v0

    .local v3, length:I
    :goto_37
    if-ge v1, v3, :cond_16

    .line 339
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    if-nez p2, :cond_51

    .line 341
    aget-object v2, v0, v1

    .line 342
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 345
    invoke-virtual {p0, v7}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    .line 336
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 346
    :cond_51
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4e

    if-ne p2, v6, :cond_4e

    .line 348
    aget-object v2, v0, v1

    .line 349
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 352
    invoke-virtual {p0, v6}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    goto :goto_4e
.end method

.method private handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V
    .registers 11
    .parameter "ar"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 385
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_33

    .line 386
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_2f

    .line 388
    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 391
    :cond_2f
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 432
    :cond_32
    :goto_32
    return-void

    .line 392
    :cond_33
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_48

    .line 393
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v3, 0x190

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 395
    :cond_44
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_32

    .line 401
    :cond_48
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 402
    .local v0, cwArray:[I
    if-nez p2, :cond_94

    .line 403
    aget v1, v0, v3

    if-ne v1, v2, :cond_8f

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_8f

    move v1, v2

    :goto_5c
    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 404
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW for Sub0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    monitor-enter p0

    .line 411
    const-wide/16 v4, 0x1388

    :try_start_7b
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_91
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_db

    .line 414
    :goto_7e
    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_91

    .line 417
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_32

    :cond_8f
    move v1, v3

    .line 403
    goto :goto_5c

    .line 414
    :catchall_91
    move-exception v1

    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v1

    .line 419
    :cond_94
    if-ne p2, v2, :cond_32

    .line 420
    aget v1, v0, v3

    if-ne v1, v2, :cond_a1

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_a1

    move v3, v2

    :cond_a1
    iput-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 421
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CW for Sub1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 427
    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto/16 :goto_32

    .line 412
    :catch_db
    move-exception v1

    goto :goto_7e
.end method

.method private handleRevertOperation(II)V
    .registers 9
    .parameter "subscription"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 477
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRevertOperation sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez p1, :cond_38

    .line 479
    packed-switch p2, :pswitch_data_5a

    .line 508
    :cond_29
    :goto_29
    return-void

    .line 481
    :pswitch_2a
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_29

    .line 482
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_29

    .line 487
    :pswitch_34
    invoke-direct {p0, v4}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_29

    .line 490
    :cond_38
    if-ne p1, v5, :cond_29

    .line 491
    packed-switch p2, :pswitch_data_62

    goto :goto_29

    .line 493
    :pswitch_3e
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_47

    .line 494
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 497
    :cond_47
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01ff

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 500
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    .line 504
    .end local v0           #toast:Landroid/widget/Toast;
    :pswitch_56
    invoke-direct {p0, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_29

    .line 479
    :pswitch_data_5a
    .packed-switch 0x6
        :pswitch_2a
        :pswitch_34
    .end packed-switch

    .line 491
    :pswitch_data_62
    .packed-switch 0x6
        :pswitch_3e
        :pswitch_56
    .end packed-switch
.end method

.method private handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V
    .registers 7
    .parameter "ar"
    .parameter "arg"

    .prologue
    .line 537
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 539
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_23

    .line 541
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v2, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 548
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01ff

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 551
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 552
    return-void

    .line 543
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_23
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 544
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x190

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_13
.end method

.method private handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .registers 8
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 364
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 366
    invoke-direct {p0, p2, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 382
    :goto_13
    return-void

    .line 367
    :cond_14
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_29

    .line 368
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v1, 0x190

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 370
    :cond_25
    invoke-direct {p0, p2, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    goto :goto_13

    .line 372
    :cond_29
    if-nez p2, :cond_42

    .line 373
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, p2

    .line 379
    :goto_33
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_13

    .line 375
    :cond_42
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, p2

    goto :goto_33
.end method

.method private handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V
    .registers 12
    .parameter "ar"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 435
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 437
    const/4 v0, 0x7

    invoke-direct {p0, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 474
    :cond_a
    :goto_a
    return-void

    .line 439
    :cond_b
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCallWaitingResponse success arg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    move v4, v6

    .line 441
    .local v4, time:I
    :goto_29
    if-nez p2, :cond_58

    .line 446
    monitor-enter p0

    .line 448
    const-wide/16 v0, 0x1388

    :try_start_2e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_53
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_85

    .line 451
    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_53

    .line 453
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-nez v0, :cond_56

    move v0, v5

    :goto_37
    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 455
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_a

    .line 440
    .end local v4           #time:I
    :cond_50
    const/16 v4, 0x14

    goto :goto_29

    .line 451
    .restart local v4       #time:I
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    move v0, v6

    .line 453
    goto :goto_37

    .line 460
    :cond_58
    if-ne p2, v5, :cond_a

    .line 461
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-nez v0, :cond_83

    :goto_5e
    iput-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 462
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_69

    .line 463
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 468
    :cond_69
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 469
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto :goto_a

    :cond_83
    move v5, v6

    .line 461
    goto :goto_5e

    .line 449
    :catch_85
    move-exception v0

    goto :goto_31
.end method

.method private processStartDialog(IZ)V
    .registers 5
    .parameter "state"
    .parameter "read"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/XDivertCheckBoxPreference$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference$3;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method private processStopDialog(IZ)V
    .registers 5
    .parameter "state"
    .parameter "read"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_10

    .line 243
    const-string v0, "XDivertCheckBoxPreference"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, p2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 246
    :cond_10
    return-void
.end method

.method private revertCFNRC(I)V
    .registers 11
    .parameter "arg"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 511
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_39

    const/4 v1, 0x3

    .line 514
    .local v1, action:I
    :goto_8
    const/4 v2, 0x3

    .line 515
    .local v2, reason:I
    const/4 v0, 0x2

    if-eq v2, v0, :cond_3b

    move v4, v5

    .line 517
    .local v4, time:I
    :goto_d
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertCFNRc arg = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-nez p1, :cond_3e

    .line 519
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v7

    iget-object v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v6, v8, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 533
    :cond_38
    :goto_38
    return-void

    .end local v1           #action:I
    .end local v2           #reason:I
    .end local v4           #time:I
    :cond_39
    move v1, v5

    .line 511
    goto :goto_8

    .line 515
    .restart local v1       #action:I
    .restart local v2       #reason:I
    :cond_3b
    const/16 v4, 0x14

    goto :goto_d

    .line 525
    .restart local v4       #time:I
    :cond_3e
    if-ne p1, v7, :cond_38

    .line 526
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v8, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_38
.end method


# virtual methods
.method public displayAlertMessage(ZZZZ)V
    .registers 14
    .parameter "sub1Cfnrc"
    .parameter "sub2Cfnrc"
    .parameter "sub1CW"
    .parameter "sub2CW"

    .prologue
    const v8, 0x7f0c0202

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 202
    new-array v3, v4, [I

    fill-array-data v3, :array_aa

    .line 203
    .local v3, subStatus:[I
    new-array v2, v4, [I

    fill-array-data v2, :array_b2

    .line 204
    .local v2, resSubId:[I
    const-string v0, ""

    .line 206
    .local v0, dispMsg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    iget v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v4, :cond_5e

    .line 211
    if-ne p1, v7, :cond_1e

    if-ne p1, p3, :cond_1e

    if-nez v1, :cond_1e

    .line 212
    aput v8, v3, v1

    .line 214
    :cond_1e
    if-ne p2, v7, :cond_26

    if-ne p2, p4, :cond_26

    if-ne v1, v7, :cond_26

    .line 215
    aput v8, v3, v1

    .line 218
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 222
    :cond_5e
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAlertMessage:  dispMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0201

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/phone/XDivertCheckBoxPreference$2;

    invoke-direct {v6, p0}, Lcom/android/phone/XDivertCheckBoxPreference$2;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/phone/XDivertCheckBoxPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/XDivertCheckBoxPreference$1;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 239
    return-void

    .line 202
    :array_aa
    .array-data 0x4
        0x3t 0x2t 0xct 0x7ft
        0x3t 0x2t 0xct 0x7ft
    .end array-data

    .line 203
    :array_b2
    .array-data 0x4
        0xd5t 0x2t 0xct 0x7ft
        0xd6t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "listener"
    .parameter "skipReading"
    .parameter "sub1"
    .parameter "sub2"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 103
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 104
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v2, Lcom/android/phone/MSimCallNotifier;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    .line 106
    const-string v2, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init sub1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , sub2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 109
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, p3, v6}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 110
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, p4, v5}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 112
    const/16 v2, 0x8

    invoke-direct {p0, v2, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 113
    if-nez p2, :cond_8f

    .line 114
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    .line 115
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 116
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    .line 117
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_64
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v2, :cond_80

    .line 119
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v1

    .line 120
    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    if-nez v1, :cond_7e

    move-object v2, p3

    :goto_79
    aput-object v2, v3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_7e
    move-object v2, p4

    .line 120
    goto :goto_79

    .line 124
    :cond_80
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 127
    .end local v1           #i:I
    :cond_8f
    return-void
.end method

.method protected onClick()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 133
    const/16 v0, 0x8

    invoke-direct {p0, v0, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 134
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mXdivertStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 136
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 137
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_70

    move v0, v5

    :goto_33
    iput v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    .line 140
    iput v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    .line 141
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_72

    move v4, v5

    .line 146
    .local v4, time:I
    :goto_3d
    monitor-enter p0

    .line 148
    const-wide/16 v2, 0x1388

    :try_start_40
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_75
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_8e

    .line 151
    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_75

    .line 155
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 156
    .local v6, requestForSub1:Z
    if-eqz v6, :cond_78

    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-ne v6, v0, :cond_78

    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    if-ne v0, v1, :cond_78

    .line 159
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v8

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v8, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 172
    :goto_6f
    return-void

    .end local v4           #time:I
    .end local v6           #requestForSub1:Z
    :cond_70
    move v0, v1

    .line 137
    goto :goto_33

    .line 141
    :cond_72
    const/16 v4, 0x14

    goto :goto_3d

    .line 151
    .restart local v4       #time:I
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 166
    .restart local v6       #requestForSub1:Z
    :cond_78
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v8

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_6f

    .line 149
    .end local v6           #requestForSub1:Z
    :catch_8e
    move-exception v0

    goto :goto_43
.end method

.method queryCallWaiting(I)V
    .registers 5
    .parameter "arg"

    .prologue
    const/4 v2, 0x3

    .line 176
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 178
    return-void
.end method

.method public validateXDivert()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 184
    .local v0, check1:Z
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, check2:Z
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CFNR sub1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CFNR sub2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSub1CallWaiting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSub2CallWaiting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->displayAlertMessage(ZZZZ)V

    .line 188
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_7a

    .line 189
    if-eqz v0, :cond_78

    if-ne v0, v1, :cond_78

    .line 190
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-eqz v4, :cond_76

    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-ne v4, v5, :cond_76

    .line 197
    :goto_75
    return v2

    :cond_76
    move v2, v3

    .line 193
    goto :goto_75

    :cond_78
    move v2, v3

    .line 195
    goto :goto_75

    :cond_7a
    move v2, v3

    .line 197
    goto :goto_75
.end method
