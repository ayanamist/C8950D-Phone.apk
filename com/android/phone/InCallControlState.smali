.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "InCallControlState"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canSwap:Z

.field public canVoiceRecord:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 104
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 105
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 495
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method private okToVoiceRecord(Lcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 436
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 437
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_1e

    move v2, v3

    .line 438
    .local v2, hasActiveFgCall:Z
    :goto_f
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_20

    .line 442
    .local v3, okToRecord:Z
    :goto_1d
    return v3

    .end local v2           #hasActiveFgCall:Z
    .end local v3           #okToRecord:Z
    :cond_1e
    move v2, v4

    .line 437
    goto :goto_f

    .restart local v2       #hasActiveFgCall:Z
    :cond_20
    move v3, v4

    .line 438
    goto :goto_1d
.end method

.method private okToVoiceRecord(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 11
    .parameter "cm"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 455
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-static {p1, v6}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 456
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 458
    .local v2, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    if-eq v6, v7, :cond_19

    .line 468
    :goto_18
    return v5

    .line 462
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 463
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_36

    move v3, v4

    .line 464
    .local v3, hasActiveFgCall:Z
    :goto_22
    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-static {p1, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    if-nez v6, :cond_38

    .local v4, okToRecord:Z
    :goto_34
    move v5, v4

    .line 468
    goto :goto_18

    .end local v3           #hasActiveFgCall:Z
    .end local v4           #okToRecord:Z
    :cond_36
    move v3, v5

    .line 463
    goto :goto_22

    .restart local v3       #hasActiveFgCall:Z
    :cond_38
    move v4, v5

    .line 464
    goto :goto_34
.end method


# virtual methods
.method public dumpState()V
    .registers 3

    .prologue
    .line 475
    const-string v0, "InCallControlState:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  manageConferenceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canEndCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method protected getMute()Z
    .registers 2

    .prologue
    .line 521
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getUserHold()Z
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method protected getUserMute()Z
    .registers 2

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method protected isBluetoothAudioConnectedOrPending()Z
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothAvailable()Z
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    return v0
.end method

.method protected isManageConferenceMode()Z
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v0

    return v0
.end method

.method protected okToShowDialpad()Z
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v0

    return v0
.end method

.method public setInCallInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 109
    return-void
.end method

.method protected setUserHold(Z)V
    .registers 2
    .parameter "userHold"

    .prologue
    .line 540
    return-void
.end method

.method protected setUserMute(Z)V
    .registers 2
    .parameter "userMute"

    .prologue
    .line 543
    return-void
.end method

.method public update()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 117
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    .line 118
    .local v10, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 119
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 120
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_ed

    move v4, v11

    .line 121
    .local v4, hasActiveForegroundCall:Z
    :goto_17
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 124
    .local v5, hasHoldingCall:Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 130
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 131
    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v13, :cond_f0

    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->isManageConferenceMode()Z

    move-result v13

    if-nez v13, :cond_f0

    move v13, v11

    :goto_38
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 142
    :goto_3a
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 149
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 152
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 153
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->isBluetoothAvailable()Z

    move-result v13

    if-eqz v13, :cond_f9

    .line 159
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->isBluetoothAudioConnectedOrPending()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 168
    :goto_62
    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v13, :cond_ff

    move v13, v11

    :goto_67
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->getUiScreen()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 177
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 178
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const/4 v7, 0x0

    .line 179
    .local v7, isEmergencyCall:Z
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    .line 182
    :cond_8a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    .line 183
    .local v6, isECM:Z
    if-nez v7, :cond_96

    if-eqz v6, :cond_102

    .line 184
    :cond_96
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 185
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 198
    :goto_9a
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->okToShowDialpad()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->isDialerOpened()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 210
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_111

    .line 212
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 216
    if-eqz v5, :cond_10b

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_10b

    move v13, v11

    :goto_bb
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 219
    if-eqz v4, :cond_10d

    if-nez v5, :cond_10d

    move v8, v11

    .line 220
    .local v8, okToHold:Z
    :goto_c2
    iget-boolean v9, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 221
    .local v9, okToUnhold:Z
    if-nez v8, :cond_c8

    if-eqz v9, :cond_10f

    :cond_c8
    :goto_c8
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 243
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_ca
    :goto_ca
    sget-boolean v11, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v11, :cond_ec

    .line 244
    const-string v11, "InCallControlState"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update()->InCallScreen.CAN_VOICE_RECORD="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v7, :cond_137

    .line 248
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 256
    :cond_ec
    :goto_ec
    return-void

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #hasActiveForegroundCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #isECM:Z
    .end local v7           #isEmergencyCall:Z
    :cond_ed
    move v4, v12

    .line 120
    goto/16 :goto_17

    .restart local v4       #hasActiveForegroundCall:Z
    .restart local v5       #hasHoldingCall:Z
    :cond_f0
    move v13, v12

    .line 131
    goto/16 :goto_38

    .line 137
    :cond_f3
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 138
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3a

    .line 162
    :cond_f9
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 163
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_62

    :cond_ff
    move v13, v12

    .line 168
    goto/16 :goto_67

    .line 187
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isECM:Z
    .restart local v7       #isEmergencyCall:Z
    :cond_102
    iput-boolean v4, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/InCallControlState;->getMute()Z

    move-result v13

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_9a

    :cond_10b
    move v13, v12

    .line 216
    goto :goto_bb

    :cond_10d
    move v8, v12

    .line 219
    goto :goto_c2

    .restart local v8       #okToHold:Z
    .restart local v9       #okToUnhold:Z
    :cond_10f
    move v11, v12

    .line 221
    goto :goto_c8

    .line 222
    .end local v8           #okToHold:Z
    .end local v9           #okToUnhold:Z
    :cond_111
    if-eqz v5, :cond_130

    sget-object v13, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_130

    .line 227
    iget-object v13, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 228
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_ca

    .line 230
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 231
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 232
    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_ca

    .line 236
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_130
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 237
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 238
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_ca

    .line 250
    :cond_137
    iget-object v11, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v11}, Lcom/android/phone/InCallControlState;->okToVoiceRecord(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 251
    const-string v11, "InCallControlState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update()->canVoiceRecord = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec
.end method

.method public update(I)V
    .registers 19
    .parameter "subscription"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 271
    .local v13, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 272
    .local v12, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 273
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 274
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_13f

    const/4 v5, 0x1

    .line 275
    .local v5, hasActiveForegroundCall:Z
    :goto_1f
    const/4 v6, 0x0

    .line 277
    .local v6, hasHoldingCall:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 278
    const/4 v6, 0x1

    .line 282
    :cond_2d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_145

    .line 286
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 287
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v14, :cond_142

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isManageConferenceMode()Z

    move-result v14

    if-nez v14, :cond_142

    const/4 v14, 0x1

    :goto_4c
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 296
    :goto_50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 303
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v14, v12}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAvailable()Z

    move-result v14

    if-eqz v14, :cond_151

    .line 311
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isBluetoothAudioConnectedOrPending()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 322
    :goto_8c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_15d

    .line 323
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 329
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getUiScreen()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 337
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 338
    .local v2, c:Lcom/android/internal/telephony/Connection;
    const/4 v8, 0x0

    .line 339
    .local v8, isEmergencyCall:Z
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    .line 342
    :cond_bc
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    .line 345
    .local v7, isECM:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_16a

    .line 346
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 361
    :goto_d1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_188

    .line 362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 378
    :goto_e7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 379
    .local v11, p:Lcom/android/internal/telephony/Phone;
    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_1a3

    .line 382
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 386
    if-eqz v6, :cond_19a

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_19a

    const/4 v14, 0x1

    :goto_103
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 389
    if-eqz v5, :cond_19d

    if-nez v6, :cond_19d

    const/4 v9, 0x1

    .line 390
    .local v9, okToHold:Z
    :goto_10c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 391
    .local v10, okToUnhold:Z
    if-nez v9, :cond_114

    if-eqz v10, :cond_1a0

    :cond_114
    const/4 v14, 0x1

    :goto_115
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 414
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_119
    :goto_119
    sget-boolean v14, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v14, :cond_13e

    .line 415
    const-string v14, "InCallControlState"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update()->InCallScreen.CAN_VOICE_RECORD="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz v8, :cond_1e1

    .line 417
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 425
    :cond_13e
    :goto_13e
    return-void

    .line 274
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #hasActiveForegroundCall:Z
    .end local v6           #hasHoldingCall:Z
    .end local v7           #isECM:Z
    .end local v8           #isEmergencyCall:Z
    .end local v11           #p:Lcom/android/internal/telephony/Phone;
    :cond_13f
    const/4 v5, 0x0

    goto/16 :goto_1f

    .line 287
    .restart local v5       #hasActiveForegroundCall:Z
    .restart local v6       #hasHoldingCall:Z
    :cond_142
    const/4 v14, 0x0

    goto/16 :goto_4c

    .line 291
    :cond_145
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 292
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_50

    .line 314
    :cond_151
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 315
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_8c

    .line 326
    :cond_15d
    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v13, v14, :cond_168

    const/4 v14, 0x1

    :goto_162
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    goto/16 :goto_9d

    :cond_168
    const/4 v14, 0x0

    goto :goto_162

    .line 348
    .restart local v2       #c:Lcom/android/internal/telephony/Connection;
    .restart local v7       #isECM:Z
    .restart local v8       #isEmergencyCall:Z
    :cond_16a
    if-nez v8, :cond_16e

    if-eqz v7, :cond_17a

    .line 349
    :cond_16e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 350
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_d1

    .line 352
    :cond_17a
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->getMute()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_d1

    .line 368
    :cond_188
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->okToShowDialpad()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->isDialerOpened()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    goto/16 :goto_e7

    .line 386
    .restart local v11       #p:Lcom/android/internal/telephony/Phone;
    :cond_19a
    const/4 v14, 0x0

    goto/16 :goto_103

    .line 389
    :cond_19d
    const/4 v9, 0x0

    goto/16 :goto_10c

    .line 391
    .restart local v9       #okToHold:Z
    .restart local v10       #okToUnhold:Z
    :cond_1a0
    const/4 v14, 0x0

    goto/16 :goto_115

    .line 392
    .end local v9           #okToHold:Z
    .end local v10           #okToUnhold:Z
    :cond_1a3
    if-eqz v6, :cond_1d0

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v14, :cond_1d0

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 400
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_119

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_119

    .line 402
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 403
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 404
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_119

    .line 408
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_1d0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 409
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 410
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_119

    .line 419
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/phone/InCallControlState;->okToVoiceRecord(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    .line 420
    const-string v14, "InCallControlState"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update()->canVoiceRecord = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13e
.end method
