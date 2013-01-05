.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$1;,
        Lcom/android/phone/CallCard$Fade;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field private static bgConn:Lcom/android/internal/telephony/Connection;

.field private static fgConn:Lcom/android/internal/telephony/Connection;


# instance fields
.field private fg:Z

.field private lastConCreatTime:J

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mIsRinging:Z

.field private mLabel:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mParticipants:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryPhoneNumber:Landroid/widget/TextView;

.field private mShowThirdCallTip:Landroid/widget/TextView;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field private mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

.field private msecondaryParticipants:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->fg:Z

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->inflate(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 162
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 165
    new-instance v0, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 169
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 2560
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2561
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2562
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2564
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 2565
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2567
    :cond_15
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 30
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMainCallStatus(call "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 622
    if-nez p2, :cond_2a

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 894
    :cond_29
    :goto_29
    return-void

    .line 627
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    .line 630
    .local v24, state:Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - call.state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 632
    sget-object v2, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_35e

    .line 694
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 701
    .local v16, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 706
    .local v14, bgCall:Lcom/android/internal/telephony/Call;
    const-string v2, "ro.config.hw_show_number"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 712
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1ab

    .line 714
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 715
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v11

    cmp-long v2, v4, v11

    if-eqz v2, :cond_193

    .line 716
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 717
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 718
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 735
    :cond_d3
    :goto_d3
    const-string v2, "ro.config.hw_show_number"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1cc

    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1c8

    const/16 v17, 0x1

    .line 740
    .local v17, ifCallReflect:Z
    :goto_f4
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    if-eqz v17, :cond_1d0

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 878
    :goto_103
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 883
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_29

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29

    .line 639
    .end local v14           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v17           #ifCallReflect:Z
    :pswitch_141
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateCallCard(Lcom/android/internal/telephony/Call;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_75

    .line 651
    :pswitch_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_75

    .line 657
    :pswitch_16a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_75

    .line 667
    :pswitch_178
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_75

    .line 674
    :pswitch_181
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_75

    .line 683
    :pswitch_18a
    const-string v2, "CallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 720
    .restart local v14       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v16       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_193
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 721
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 722
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_d3

    .line 725
    :cond_1ab
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 726
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 727
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 728
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_d3

    .line 735
    :cond_1c8
    const/16 v17, 0x0

    goto/16 :goto_f4

    :cond_1cc
    const/16 v17, 0x1

    goto/16 :goto_f4

    .line 747
    .restart local v17       #ifCallReflect:Z
    :cond_1d0
    const/4 v7, 0x0

    .line 748
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    .line 749
    .local v22, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_216

    .line 753
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    move-result v2

    if-eqz v2, :cond_211

    .line 757
    sget-object v7, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 761
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    :goto_1f6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 769
    :goto_1fa
    if-nez v7, :cond_240

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 776
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_103

    .line 759
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_211
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    goto :goto_1f6

    .line 762
    :cond_216
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_220

    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_225

    .line 764
    :cond_220
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_1fa

    .line 766
    :cond_225
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 779
    :cond_240
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 783
    .local v10, presentation:I
    const/16 v23, 0x1

    .line 784
    .local v23, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v20

    .line 785
    .local v20, o:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_2b9

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v23

    .line 794
    :goto_25e
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_29a

    .line 795
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v21

    .line 796
    .local v21, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v26

    .line 797
    .local v26, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v25

    .line 798
    .local v25, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 799
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_2c2

    move-object/from16 v2, v20

    .line 800
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 805
    :cond_27c
    :goto_27c
    if-eqz v3, :cond_29a

    .line 806
    if-eqz v26, :cond_28c

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28c

    .line 809
    const/16 v23, 0x1

    .line 811
    :cond_28c
    if-eqz v25, :cond_29a

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29a

    .line 814
    const/16 v23, 0x1

    .line 819
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v21           #obj:Ljava/lang/Object;
    .end local v25           #updatedCnapName:Ljava/lang/String;
    .end local v26           #updatedNumber:Ljava/lang/String;
    :cond_29a
    if-eqz v23, :cond_2cf

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 823
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_2cd

    const/4 v11, 0x1

    :goto_2af
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_103

    .line 789
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v23

    goto :goto_25e

    .line 801
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v21       #obj:Ljava/lang/Object;
    .restart local v25       #updatedCnapName:Ljava/lang/String;
    .restart local v26       #updatedNumber:Ljava/lang/String;
    :cond_2c2
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_27c

    move-object/from16 v3, v20

    .line 802
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_27c

    .line 823
    .end local v21           #obj:Ljava/lang/Object;
    .end local v25           #updatedCnapName:Ljava/lang/String;
    .end local v26           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2cd
    const/4 v11, 0x0

    goto :goto_2af

    .line 830
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2cf
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_32a

    move-object/from16 v9, v20

    .line 831
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 835
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 836
    .local v15, connAddress:Ljava/lang/String;
    iget-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 837
    .local v19, number:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_30d

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_30d

    if-eqz v15, :cond_30d

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30d

    .line 839
    const-string v2, "- displayMainCallStatus: Phone number modified!!"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v18

    .line 841
    .local v18, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v18, :cond_30d

    .line 842
    move-object/from16 v9, v18

    .line 843
    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 847
    .end local v18           #newCi:Lcom/android/internal/telephony/CallerInfo;
    :cond_30d
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 848
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 849
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 855
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_103

    .line 856
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #connAddress:Ljava/lang/String;
    .end local v19           #number:Ljava/lang/String;
    :cond_32a
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_341

    .line 857
    check-cast v20, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v20           #o:Ljava/lang/Object;
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 862
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_103

    .line 864
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v20       #o:Ljava/lang/Object;
    :cond_341
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 632
    nop

    :pswitch_data_35e
    .packed-switch 0x1
        :pswitch_141
        :pswitch_161
        :pswitch_161
        :pswitch_16a
        :pswitch_178
        :pswitch_178
        :pswitch_181
        :pswitch_181
        :pswitch_18a
    .end packed-switch
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    .registers 31
    .parameter "cm"
    .parameter "call"
    .parameter "sub"

    .prologue
    .line 904
    if-nez p2, :cond_c

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1158
    :cond_b
    :goto_b
    return-void

    .line 909
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    .line 914
    .local v24, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_326

    .line 970
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 976
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 977
    .local v16, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 980
    .local v14, bgCall:Lcom/android/internal/telephony/Call;
    const-string v2, "ro.config.hw_show_number"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 984
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_174

    .line 986
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 987
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v11

    cmp-long v2, v4, v11

    if-eqz v2, :cond_15c

    .line 988
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 989
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    .line 990
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1005
    :cond_a3
    :goto_a3
    const-string v2, "ro.config.hw_show_number"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_195

    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_191

    const/16 v17, 0x1

    .line 1008
    .local v17, ifCallReflect:Z
    :goto_c4
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_199

    if-eqz v17, :cond_199

    .line 1011
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 1142
    :goto_d3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_b

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 919
    .end local v14           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v17           #ifCallReflect:Z
    :pswitch_111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_3d

    .line 927
    :pswitch_12a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3d

    .line 933
    :pswitch_133
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3d

    .line 943
    :pswitch_141
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3d

    .line 950
    :pswitch_14a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->cancelTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3d

    .line 959
    :pswitch_153
    const-string v2, "CallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 992
    .restart local v14       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v16       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_15c
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 993
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 994
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_a3

    .line 997
    :cond_174
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 998
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 999
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallCard;->fg:Z

    .line 1000
    sget-object v2, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/phone/CallCard;->lastConCreatTime:J

    goto/16 :goto_a3

    .line 1005
    :cond_191
    const/16 v17, 0x0

    goto/16 :goto_c4

    :cond_195
    const/16 v17, 0x1

    goto/16 :goto_c4

    .line 1015
    .restart local v17       #ifCallReflect:Z
    :cond_199
    const/4 v7, 0x0

    .line 1016
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    .line 1017
    .local v22, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_1df

    .line 1019
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    move-result v2

    if-eqz v2, :cond_1da

    .line 1021
    sget-object v7, Lcom/android/phone/CallCard;->fgConn:Lcom/android/internal/telephony/Connection;

    .line 1025
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    :goto_1bf
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1033
    :goto_1c3
    if-nez v7, :cond_209

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 1040
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_d3

    .line 1023
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1da
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    goto :goto_1bf

    .line 1026
    :cond_1df
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_1e9

    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_1ee

    .line 1028
    :cond_1e9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_1c3

    .line 1030
    :cond_1ee
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1043
    :cond_209
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 1047
    .local v10, presentation:I
    const/16 v23, 0x1

    .line 1048
    .local v23, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v20

    .line 1049
    .local v20, o:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_282

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v23

    .line 1058
    :goto_227
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_263

    .line 1059
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v21

    .line 1060
    .local v21, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v26

    .line 1061
    .local v26, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v25

    .line 1062
    .local v25, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1063
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_28b

    move-object/from16 v2, v20

    .line 1064
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1069
    :cond_245
    :goto_245
    if-eqz v3, :cond_263

    .line 1070
    if-eqz v26, :cond_255

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_255

    .line 1073
    const/16 v23, 0x1

    .line 1075
    :cond_255
    if-eqz v25, :cond_263

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_263

    .line 1078
    const/16 v23, 0x1

    .line 1083
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v21           #obj:Ljava/lang/Object;
    .end local v25           #updatedCnapName:Ljava/lang/String;
    .end local v26           #updatedNumber:Ljava/lang/String;
    :cond_263
    if-eqz v23, :cond_298

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 1087
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_296

    const/4 v11, 0x1

    :goto_278
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_d3

    .line 1053
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v23

    goto :goto_227

    .line 1065
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v21       #obj:Ljava/lang/Object;
    .restart local v25       #updatedCnapName:Ljava/lang/String;
    .restart local v26       #updatedNumber:Ljava/lang/String;
    :cond_28b
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_245

    move-object/from16 v3, v20

    .line 1066
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_245

    .line 1087
    .end local v21           #obj:Ljava/lang/Object;
    .end local v25           #updatedCnapName:Ljava/lang/String;
    .end local v26           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_296
    const/4 v11, 0x0

    goto :goto_278

    .line 1094
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_298
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2f3

    move-object/from16 v9, v20

    .line 1095
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 1099
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 1100
    .local v15, connAddress:Ljava/lang/String;
    iget-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1101
    .local v19, number:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_2d6

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_2d6

    if-eqz v15, :cond_2d6

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d6

    .line 1103
    const-string v2, "- displayMainCallStatus: Phone number modified!!"

    invoke-static {v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v18

    .line 1105
    .local v18, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v18, :cond_2d6

    .line 1106
    move-object/from16 v9, v18

    .line 1107
    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1111
    .end local v18           #newCi:Lcom/android/internal/telephony/CallerInfo;
    :cond_2d6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1112
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1113
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1119
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_d3

    .line 1120
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #connAddress:Ljava/lang/String;
    .end local v19           #number:Ljava/lang/String;
    :cond_2f3
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_30a

    .line 1121
    check-cast v20, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v20           #o:Ljava/lang/Object;
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1126
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_d3

    .line 1128
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v20       #o:Ljava/lang/Object;
    :cond_30a
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3

    .line 914
    :pswitch_data_326
    .packed-switch 0x1
        :pswitch_111
        :pswitch_111
        :pswitch_12a
        :pswitch_133
        :pswitch_141
        :pswitch_141
        :pswitch_14a
        :pswitch_14a
        :pswitch_153
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 23
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1564
    if-eqz p2, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1565
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->resetPhotoLayout(Z)V

    .line 1778
    :cond_25
    :goto_25
    return-void

    .line 1580
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 1581
    .local v14, phone:Lcom/android/internal/telephony/Phone;
    const/16 v16, 0x0

    .line 1583
    .local v16, showSecondaryCallInfo:Z
    const/16 v17, 0x0

    .line 1585
    .local v17, showSecondaryPhoneNumber:Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 1586
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_250

    .line 1758
    :pswitch_3d
    const/16 v16, 0x0

    .line 1766
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1767
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->resetPhotoLayout(Z)V

    .line 1774
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v16, :cond_247

    const/4 v2, 0x0

    :goto_57
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    if-eqz v17, :cond_24b

    const/4 v2, 0x0

    :goto_61
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 1595
    :pswitch_65
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 1601
    .local v15, phoneType:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_c0

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    if-eqz v2, :cond_c0

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c03e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1613
    :cond_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02006b

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1675
    .end local v15           #phoneType:I
    :goto_cc
    const/16 v16, 0x1

    .line 1677
    goto/16 :goto_3f

    .line 1617
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    if-eqz v2, :cond_df

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1628
    :cond_df
    const/4 v12, 0x0

    .line 1633
    .local v12, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    const-string v2, "ro.config.hw_show_number"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_130

    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0, v4}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    :cond_120
    :goto_120
    iget-boolean v2, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_178

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_cc

    .line 1645
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    iget-object v2, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1652
    .local v19, tmpName:Ljava/lang/String;
    if-eqz v19, :cond_120

    .line 1653
    const/16 v17, 0x1

    .line 1654
    iget-object v2, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    iget-object v2, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_120

    .line 1671
    .end local v19           #tmpName:Ljava/lang/String;
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02006f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_cc

    .line 1683
    .end local v12           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_186
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23c

    .line 1684
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    .line 1685
    .local v9, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1d0

    .line 1690
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1cc

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02006f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1745
    :cond_1cc
    :goto_1cc
    const/16 v16, 0x1

    .line 1747
    goto/16 :goto_3f

    .line 1703
    :cond_1d0
    const/4 v8, 0x0

    .line 1705
    .local v8, conn:Lcom/android/internal/telephony/Connection;
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAcceptSecondInCall"

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_22a

    .line 1707
    sget-object v8, Lcom/android/phone/CallCard;->bgConn:Lcom/android/internal/telephony/Connection;

    .line 1716
    :goto_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v2, v8, v0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 1722
    .restart local v12       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v11, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1724
    .local v11, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 1725
    .local v13, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1726
    .local v10, forceGenericPhoto:Z
    if-eqz v11, :cond_213

    iget v2, v11, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_213

    .line 1728
    iget v2, v11, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v13

    .line 1729
    const/4 v10, 0x1

    .line 1731
    :cond_213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    if-nez v10, :cond_22f

    iget-boolean v2, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_22f

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_1cc

    .line 1713
    .end local v10           #forceGenericPhoto:Z
    .end local v11           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v12           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v13           #name:Ljava/lang/String;
    :cond_22a
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto :goto_1e9

    .line 1742
    .restart local v10       #forceGenericPhoto:Z
    .restart local v11       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v12       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v13       #name:Ljava/lang/String;
    :cond_22f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02006f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1cc

    .line 1749
    .end local v8           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v10           #forceGenericPhoto:Z
    .end local v11           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v12           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v13           #name:Ljava/lang/String;
    :cond_23c
    const-string v2, "CallCard"

    const-string v3, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/16 v16, 0x0

    .line 1752
    goto/16 :goto_3f

    .line 1774
    :cond_247
    const/16 v2, 0x8

    goto/16 :goto_57

    .line 1776
    :cond_24b
    const/16 v2, 0x8

    goto/16 :goto_61

    .line 1586
    nop

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_186
        :pswitch_3d
        :pswitch_65
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 7
    .parameter "call"

    .prologue
    .line 1825
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1828
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_12

    .line 1832
    const v2, 0x7f0c01b3

    .line 1905
    .local v2, resID:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1835
    .end local v2           #resID:I
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1841
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5e

    .line 1901
    const v2, 0x7f0c01b3

    .restart local v2       #resID:I
    goto :goto_9

    .line 1843
    .end local v2           #resID:I
    :pswitch_25
    const v2, 0x7f0c0009

    .line 1844
    .restart local v2       #resID:I
    goto :goto_9

    .line 1847
    .end local v2           #resID:I
    :pswitch_29
    const v2, 0x7f0c000a

    .line 1848
    .restart local v2       #resID:I
    goto :goto_9

    .line 1851
    .end local v2           #resID:I
    :pswitch_2d
    const v2, 0x7f0c000b

    .line 1852
    .restart local v2       #resID:I
    goto :goto_9

    .line 1855
    .end local v2           #resID:I
    :pswitch_31
    const v2, 0x7f0c000c

    .line 1856
    .restart local v2       #resID:I
    goto :goto_9

    .line 1859
    .end local v2           #resID:I
    :pswitch_35
    const v2, 0x7f0c000d

    .line 1860
    .restart local v2       #resID:I
    goto :goto_9

    .line 1863
    .end local v2           #resID:I
    :pswitch_39
    const v2, 0x7f0c000e

    .line 1864
    .restart local v2       #resID:I
    goto :goto_9

    .line 1867
    .end local v2           #resID:I
    :pswitch_3d
    const v2, 0x7f0c0010

    .line 1868
    .restart local v2       #resID:I
    goto :goto_9

    .line 1871
    .end local v2           #resID:I
    :pswitch_41
    const v2, 0x7f0c000f

    .line 1872
    .restart local v2       #resID:I
    goto :goto_9

    .line 1876
    .end local v2           #resID:I
    :pswitch_45
    const v2, 0x7f0c0011

    .line 1877
    .restart local v2       #resID:I
    goto :goto_9

    .line 1880
    .end local v2           #resID:I
    :pswitch_49
    const v2, 0x7f0c0012

    .line 1881
    .restart local v2       #resID:I
    goto :goto_9

    .line 1884
    .end local v2           #resID:I
    :pswitch_4d
    const v2, 0x7f0c0013

    .line 1885
    .restart local v2       #resID:I
    goto :goto_9

    .line 1888
    .end local v2           #resID:I
    :pswitch_51
    const v2, 0x7f0c0014

    .line 1889
    .restart local v2       #resID:I
    goto :goto_9

    .line 1892
    .end local v2           #resID:I
    :pswitch_55
    const v2, 0x7f0c0015

    .line 1893
    .restart local v2       #resID:I
    goto :goto_9

    .line 1897
    .end local v2           #resID:I
    :pswitch_59
    const v2, 0x7f0c0027

    .line 1898
    .restart local v2       #resID:I
    goto :goto_9

    .line 1841
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 2417
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, rawNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2420
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2424
    .local v0, formattedNumber:Ljava/lang/String;
    :goto_e
    const v3, 0x7f0c01b7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2425
    .local v2, titleFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2422
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #titleFormat:Ljava/lang/String;
    :cond_20
    const v3, 0x7f0c0004

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedNumber:Ljava/lang/String;
    goto :goto_e
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .registers 5
    .parameter "presentation"

    .prologue
    .line 2147
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1b

    .line 2149
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2153
    :cond_1a
    :goto_1a
    return-object v0

    .line 2150
    :cond_1b
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_1a

    .line 2151
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private hideVideoCallWidgets()V
    .registers 3

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->setVisibility(I)V

    .line 1226
    return-void
.end method

.method private invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z
    .registers 18
    .parameter "className"
    .parameter "methodName"
    .parameter "receiver"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2115
    .local p5, ctypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 2116
    :cond_4
    const/4 v9, 0x0

    .line 2142
    :goto_5
    return v9

    .line 2120
    :cond_6
    :try_start_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 2121
    .local v8, targetClass:Ljava/lang/Class;
    move-object/from16 v0, p5

    invoke-virtual {v8, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2123
    .local v4, nMethod:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_6f

    .line 2124
    move-object/from16 v0, p4

    invoke-virtual {v4, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2125
    .local v5, obj:Ljava/lang/Object;
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke method::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    check-cast v5, Ljava/lang/Boolean;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_37

    move-result v9

    goto :goto_5

    .line 2129
    .end local v4           #nMethod:Ljava/lang/reflect/Method;
    .end local v8           #targetClass:Ljava/lang/Class;
    :catch_37
    move-exception v2

    .line 2131
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    .line 2132
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2133
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 2134
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2135
    .local v7, phoneType:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_6d

    .line 2136
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occur an exception when call "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2140
    :cond_6d
    const/4 v9, 0x0

    goto :goto_5

    .line 2142
    .end local v1           #cm:Lcom/android/internal/telephony/CallManager;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v6           #phone:Lcom/android/internal/telephony/Phone;
    .end local v7           #phoneType:I
    .restart local v4       #nMethod:Ljava/lang/reflect/Method;
    .restart local v8       #targetClass:Ljava/lang/Class;
    :cond_6f
    const/4 v9, 0x0

    goto :goto_5
.end method

.method private isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .registers 3
    .parameter "call"

    .prologue
    .line 1169
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method private isVideoCallWidgetVisible()Z
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2673
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    return-void
.end method

.method private resetPhotoLayout(Z)V
    .registers 9
    .parameter "showSecondaryCall"

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1787
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1788
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1789
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1790
    .local v4, screenWidth:I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1792
    .local v3, screenHeight:I
    iget-boolean v5, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    if-eqz v5, :cond_4f

    .line 1793
    if-le v4, v3, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1794
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1795
    .local v1, infoparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1796
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1821
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #infoparams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    :cond_4e
    :goto_4e
    return-void

    .line 1800
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #screenHeight:I
    .restart local v4       #screenWidth:I
    :cond_4f
    if-le v4, v3, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1801
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1802
    .restart local v1       #infoparams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1803
    const/4 v5, 0x0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1805
    if-eqz p1, :cond_8b

    .line 1806
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5}, Lcom/android/phone/InCallContactPhoto;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1807
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1808
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5, v2}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e

    .line 1811
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8b
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5}, Lcom/android/phone/InCallContactPhoto;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1812
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1813
    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5, v2}, Lcom/android/phone/InCallContactPhoto;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e
.end method

.method private setGeoDescription(Lcom/android/internal/telephony/CallerInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    const/16 v2, 0x8

    .line 36
    if-nez p1, :cond_5

    .line 51
    :cond_4
    :goto_4
    return-void

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 39
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_1e
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .registers 4
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 2404
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2407
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2408
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2409
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2410
    return-void
.end method

.method private showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 4
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 2353
    if-eqz p2, :cond_18

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_18

    .line 2354
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 2355
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2359
    :goto_f
    const/4 v0, 0x1

    .line 2361
    :goto_10
    return v0

    .line 2357
    :cond_11
    const v0, 0x7f02006f

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_f

    .line 2361
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private showImage(Landroid/widget/ImageView;I)V
    .registers 4
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 2371
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2373
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2374
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2378
    :goto_d
    return-void

    .line 2376
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d
.end method

.method private showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 2387
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2389
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2390
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2394
    :goto_d
    return-void

    .line 2392
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d
.end method

.method private showVideoCallWidgets()V
    .registers 3

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallPanel;->setVisibility(I)V

    .line 1217
    return-void
.end method

.method private switchInVideoCallAudio()V
    .registers 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1268
    :goto_8
    return-void

    .line 1257
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1264
    :cond_15
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_8
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .registers 10
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 387
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v7, :cond_4c

    const/4 v3, 0x1

    .line 396
    .local v3, ringing:Z
    :goto_6
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    .line 397
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 401
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 402
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 403
    .local v5, screenWidth:I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 406
    .local v4, screenHeight:I
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v2

    .line 407
    .local v2, reservedVerticalSpace:I
    iget-object v7, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 409
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 410
    iget-boolean v7, p0, Lcom/android/phone/CallCard;->mIsRinging:Z

    if-nez v7, :cond_54

    .line 414
    if-le v5, v4, :cond_4e

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 415
    div-int/lit8 v6, v2, 0x2

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 434
    :cond_46
    :goto_46
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    return-void

    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #reservedVerticalSpace:I
    .end local v3           #ringing:Z
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    :cond_4c
    move v3, v6

    .line 387
    goto :goto_6

    .line 417
    .restart local v0       #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #reservedVerticalSpace:I
    .restart local v3       #ringing:Z
    .restart local v4       #screenHeight:I
    .restart local v5       #screenWidth:I
    :cond_4e
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 421
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->setButtonHeight(I)V

    goto :goto_46

    .line 424
    :cond_54
    if-le v5, v4, :cond_46

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 427
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_46
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .registers 16
    .parameter "call"

    .prologue
    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1341
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1342
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1343
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1345
    .local v6, phoneType:I
    const/4 v1, 0x0

    .line 1346
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1348
    .local v0, bluetoothIconId:I
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_146

    .line 1422
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_35
    :goto_35
    :pswitch_35
    const/4 v9, 0x2

    if-ne v6, v9, :cond_4d

    .line 1429
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_e8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 1433
    const v9, 0x7f0c019b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1438
    :cond_4d
    :goto_4d
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 1441
    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 1448
    :cond_57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_fd

    .line 1450
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    .line 1470
    :goto_64
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_15c

    .line 1490
    :pswitch_6f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1493
    :goto_75
    return-void

    .line 1357
    :pswitch_76
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v9, :cond_35

    .line 1358
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 1365
    :pswitch_89
    const v9, 0x7f0c01b4

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1367
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v9, :cond_35

    .line 1368
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v9, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 1376
    :pswitch_a3
    const v9, 0x7f0c019b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    goto :goto_35

    .line 1381
    :pswitch_ab
    const v9, 0x7f0c01b1

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1387
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v9, :cond_c1

    .line 1388
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->needShowTipAndShowWhich(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneUtils$ShowTip;

    move-result-object v7

    .line 1389
    .local v7, showtip:Lcom/android/phone/PhoneUtils$ShowTip;
    sget-object v9, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-eq v7, v9, :cond_ce

    .line 1390
    invoke-virtual {p0, v7}, Lcom/android/phone/CallCard;->showThirdIncomingCallTip(Lcom/android/phone/PhoneUtils$ShowTip;)V

    .line 1396
    .end local v7           #showtip:Lcom/android/phone/PhoneUtils$ShowTip;
    :cond_c1
    :goto_c1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 1397
    const v0, 0x7f02004e

    goto/16 :goto_35

    .line 1392
    .restart local v7       #showtip:Lcom/android/phone/PhoneUtils$ShowTip;
    :cond_ce
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    goto :goto_c1

    .line 1408
    .end local v7           #showtip:Lcom/android/phone/PhoneUtils$ShowTip;
    :pswitch_d2
    const v9, 0x7f0c01b5

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1411
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v9, :cond_35

    .line 1412
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    goto/16 :goto_35

    .line 1418
    :pswitch_e2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    goto/16 :goto_35

    .line 1434
    :cond_e8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1435
    const v9, 0x7f0c019c

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4d

    .line 1455
    :cond_fd
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    if-eqz v0, :cond_11f

    .line 1461
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1462
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v11, 0x40a0

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_64

    .line 1465
    :cond_11f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_64

    .line 1473
    :pswitch_12a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1474
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 1475
    .local v3, duration:J
    const-wide/16 v9, 0x3e8

    div-long v9, v3, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_75

    .line 1484
    .end local v3           #duration:J
    :pswitch_13d
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_75

    .line 1348
    nop

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_76
        :pswitch_d2
        :pswitch_89
        :pswitch_e2
        :pswitch_a3
        :pswitch_a3
        :pswitch_ab
        :pswitch_ab
        :pswitch_35
    .end packed-switch

    .line 1470
    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_12a
        :pswitch_12a
        :pswitch_6f
        :pswitch_13d
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 2439
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2440
    .local v0, phoneType:I
    :goto_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    .line 2441
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2442
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f0c01d4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2443
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2451
    :goto_22
    return-void

    .end local v0           #phoneType:I
    :cond_23
    move v0, v1

    .line 2439
    goto :goto_b

    .line 2449
    .restart local v0       #phoneType:I
    :cond_25
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .registers 10
    .parameter "call"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2166
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2167
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    .line 2174
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f02006c

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2175
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0c01b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2189
    :goto_20
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2193
    if-ne v0, v4, :cond_56

    iget-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v1, :cond_56

    .line 2195
    iget-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    iget-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2207
    :cond_56
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2208
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2211
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2212
    invoke-direct {p0, v6, v6, v6}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 2223
    return-void

    .line 2176
    :cond_67
    if-eq v0, v4, :cond_6f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_80

    .line 2183
    :cond_6f
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f02006b

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2184
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0c01b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_20

    .line 2186
    :cond_80
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .registers 25
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    .line 1926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1931
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1936
    const/4 v13, 0x0

    .line 1937
    .local v13, displayNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1938
    .local v15, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1939
    .local v10, personUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1940
    .local v18, socialStatusText:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1942
    .local v17, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_16a

    .line 1965
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1966
    .local v16, number:Ljava/lang/String;
    if-eqz v16, :cond_42

    const-string v4, "sip:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1967
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1970
    :cond_42
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14e

    .line 1976
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 1979
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 2037
    .local v12, displayName:Ljava/lang/String;
    :cond_5a
    :goto_5a
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2048
    .end local v16           #number:Ljava/lang/String;
    :goto_64
    const-string v4, "ro.config.hw_show_number"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_177

    const-class v4, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getAcceptSecondInCall"

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_174

    const/4 v14, 0x1

    .line 2053
    .local v14, ifCallReflect:Z
    :goto_84
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_17a

    if-eqz v14, :cond_17a

    .line 2056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v5, 0x7f0c01b6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2060
    :goto_96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2072
    if-eqz p3, :cond_183

    if-eqz p1, :cond_a8

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v4, :cond_183

    .line 2073
    :cond_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 2086
    :cond_b0
    :goto_b0
    if-eqz v13, :cond_b8

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_ba

    :cond_b8
    if-nez v14, :cond_1bf

    .line 2089
    :cond_ba
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2097
    :goto_c9
    if-eqz v15, :cond_d1

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_d3

    :cond_d1
    if-nez v14, :cond_1ca

    .line 2100
    :cond_d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2107
    :goto_e2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 2108
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallCard;->setGeoDescription(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2109
    return-void

    .line 1981
    .end local v12           #displayName:Ljava/lang/String;
    .end local v14           #ifCallReflect:Z
    .restart local v16       #number:Ljava/lang/String;
    :cond_f8
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_108

    .line 1985
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_5a

    .line 1987
    .end local v12           #displayName:Ljava/lang/String;
    :cond_108
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 1989
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1990
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1991
    move-object/from16 v13, v16

    goto/16 :goto_5a

    .line 2001
    .end local v12           #displayName:Ljava/lang/String;
    :cond_122
    move-object/from16 v12, v16

    .line 2005
    .restart local v12       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_132

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 2009
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto/16 :goto_5a

    .line 2011
    :cond_132
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v4, "ro.config.showEmergencyNumber"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2013
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/CallerInfo;->emergencyNumber:Ljava/lang/String;

    goto/16 :goto_5a

    .line 2022
    .end local v12           #displayName:Ljava/lang/String;
    :cond_14e
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_15e

    .line 2026
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_5a

    .line 2030
    .end local v12           #displayName:Ljava/lang/String;
    :cond_15e
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2031
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v13, v16

    .line 2032
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_5a

    .line 2041
    .end local v12           #displayName:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    :cond_16a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_64

    .line 2048
    :cond_174
    const/4 v14, 0x0

    goto/16 :goto_84

    :cond_177
    const/4 v14, 0x1

    goto/16 :goto_84

    .line 2058
    .restart local v14       #ifCallReflect:Z
    :cond_17a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    .line 2074
    :cond_183
    if-eqz p1, :cond_19a

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v4, :cond_19a

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_b0

    .line 2076
    :cond_19a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 2079
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v11, 0x7f02006f

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v11}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_b0

    .line 2092
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c9

    .line 2103
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e2
.end method

.method private updateElapsedTimeWidget(J)V
    .registers 5
    .parameter "timeElapsed"

    .prologue
    .line 1542
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 1543
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->updateCallTimeView(J)V

    .line 1552
    return-void

    .line 1545
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 11
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 447
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 449
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_13

    .line 457
    move-object v7, v6

    .line 460
    const/4 v6, 0x0

    .line 463
    :cond_13
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 465
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 467
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 468
    .local v8, phoneType:I
    const/4 v0, 0x2

    if-eq v8, v0, :cond_24

    const/4 v0, 0x4

    if-ne v8, v0, :cond_56

    .line 470
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 473
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 493
    :cond_3d
    :goto_3d
    return-void

    .line 479
    :cond_3e
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 482
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 487
    :cond_52
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 489
    :cond_56
    const/4 v0, 0x1

    if-eq v8, v0, :cond_5c

    const/4 v0, 0x3

    if-ne v8, v0, :cond_3d

    .line 491
    :cond_5c
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 12
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v4, 0x0

    .line 501
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 502
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 504
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_13

    .line 512
    move-object v7, v6

    .line 515
    const/4 v6, 0x0

    .line 518
    :cond_13
    invoke-direct {p0, p1, v7, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 520
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 522
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 523
    .local v8, phoneType:I
    const/4 v0, 0x2

    if-eq v8, v0, :cond_24

    const/4 v0, 0x4

    if-ne v8, v0, :cond_56

    .line 525
    :cond_24
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 528
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 545
    :cond_3d
    :goto_3d
    return-void

    .line 532
    :cond_3e
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAcceptSecondInCall"

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 534
    invoke-direct {p0, p1, v7}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 539
    :cond_52
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d

    .line 541
    :cond_56
    const/4 v0, 0x1

    if-eq v8, v0, :cond_5c

    const/4 v0, 0x3

    if-ne v8, v0, :cond_3d

    .line 543
    :cond_5c
    invoke-direct {p0, p1, v6}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_3d
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 600
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 601
    return-void
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 4
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 610
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 611
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .registers 15
    .parameter "call"

    .prologue
    const/4 v12, -0x2

    const/4 v11, -0x1

    .line 2237
    const/4 v6, 0x0

    .line 2241
    .local v6, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 2242
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    sget-object v8, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_be

    .line 2282
    const/4 v2, 0x0

    .line 2284
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v3, 0x0

    .line 2285
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2286
    .local v5, phoneType:I
    const/4 v8, 0x2

    if-eq v5, v8, :cond_22

    const/4 v8, 0x4

    if-ne v5, v8, :cond_86

    .line 2288
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 2296
    :goto_26
    if-eqz v3, :cond_33

    .line 2297
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 2298
    .local v4, o:Ljava/lang/Object;
    instance-of v8, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_aa

    move-object v2, v4

    .line 2299
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 2306
    .end local v4           #o:Ljava/lang/Object;
    :cond_33
    :goto_33
    if-eqz v2, :cond_37

    .line 2307
    iget v6, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2321
    :cond_37
    if-nez v6, :cond_b3

    .line 2322
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 2323
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v8, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v8

    if-nez v8, :cond_63

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v8

    if-ne v8, v12, :cond_63

    .line 2325
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v10}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v2, v8, v9, v10, v11}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 2327
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2339
    .end local v2           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_63
    :goto_63
    if-eqz v6, :cond_6f

    .line 2341
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v8, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2343
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2345
    :cond_6f
    :goto_6f
    return-void

    .line 2247
    :pswitch_70
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2250
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_63

    .line 2251
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 2252
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v8, :cond_82

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v8, :cond_63

    .line 2254
    :cond_82
    const v6, 0x7f02006a

    goto :goto_63

    .line 2289
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v2       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_86
    const/4 v8, 0x1

    if-eq v5, v8, :cond_8c

    const/4 v8, 0x3

    if-ne v5, v8, :cond_91

    .line 2291
    :cond_8c
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_26

    .line 2293
    :cond_91
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2300
    .restart local v4       #o:Ljava/lang/Object;
    :cond_aa
    instance-of v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_33

    .line 2301
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_33

    .line 2332
    :cond_b3
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v8, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2333
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_6f

    .line 2242
    :pswitch_data_be
    .packed-switch 0x4
        :pswitch_70
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 559
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 565
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 566
    return-void
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 574
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 577
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0, p2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V

    .line 583
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 584
    return-void
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 2462
    if-eqz p1, :cond_2d

    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2466
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2467
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2468
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2470
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2474
    :goto_2c
    return-void

    .line 2472
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c
.end method

.method private updateVideoCallState(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "call"

    .prologue
    .line 1178
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1182
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    if-nez v1, :cond_e

    .line 1183
    const-string v1, "VideocallPanel is null"

    invoke-static {v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1207
    :goto_d
    return-void

    .line 1187
    :cond_e
    sget-object v1, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 1204
    :goto_19
    :pswitch_19
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideVideoCallWidgets()V

    goto :goto_d

    .line 1189
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/phone/CallCard;->switchInVideoCallAudio()V

    .line 1193
    :pswitch_20
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->onCallInitiating()V

    goto :goto_d

    .line 1197
    :pswitch_26
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showVideoCallWidgets()V

    goto :goto_d

    .line 1201
    :pswitch_2a
    iget-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->onCallDisconnect()V

    goto :goto_19

    .line 1187
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_26
        :pswitch_19
        :pswitch_19
        :pswitch_2a
        :pswitch_1d
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method protected cancelTimer(Lcom/android/internal/telephony/Call;)V
    .registers 3
    .parameter "call"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1273
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 2509
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2510
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2511
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2514
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 2515
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2516
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2517
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2518
    .local v3, phoneType:I
    if-ne v3, v5, :cond_34

    .line 2521
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_2b

    .line 2522
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2524
    :cond_2b
    iget-object v4, p0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_34

    .line 2525
    iget-object v4, p0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2534
    :cond_34
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_3d

    .line 2535
    iget-object v4, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2539
    :cond_3d
    iget-object v4, p0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    if-eqz v4, :cond_46

    .line 2540
    iget-object v4, p0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2547
    :cond_46
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2548
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2549
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2550
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2551
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2552
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2554
    iget-object v4, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2556
    return v5
.end method

.method protected getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;
    .registers 10
    .parameter "cm"

    .prologue
    .line 2678
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2679
    .local v0, call:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 2680
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .line 2682
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2683
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 2684
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2696
    :cond_15
    :goto_15
    if-nez v1, :cond_47

    .line 2697
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2707
    :cond_20
    :goto_20
    return-object v2

    .line 2686
    :cond_21
    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2e

    .line 2688
    :cond_27
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2689
    if-eqz v1, :cond_15

    goto :goto_15

    .line 2693
    :cond_2e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2700
    :cond_47
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 2701
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_53

    move-object v2, v3

    .line 2702
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_20

    .line 2703
    :cond_53
    instance-of v5, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_20

    .line 2704
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #o:Ljava/lang/Object;
    iget-object v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_20
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
    .line 2738
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    return-object v0
.end method

.method public hideCallCardElements()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 2490
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2491
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2492
    return-void
.end method

.method public hideThirdIncomingCallTip()V
    .registers 3

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 1498
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1501
    :cond_12
    return-void
.end method

.method protected inflate(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040003

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 177
    return-void
.end method

.method protected isBluetoothAudioConnectedOrPending()Z
    .registers 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothAvailable()Z
    .registers 2

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 209
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 210
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 211
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 212
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 213
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 214
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 217
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v1, :cond_57

    .line 218
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->hideThirdIncomingCallTip()V

    .line 223
    :cond_57
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 226
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 227
    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    .local v0, inset:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 230
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mParticipants:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->msecondaryParticipants:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    .line 241
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 242
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 243
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 246
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/VideoCallPanel;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    .line 248
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    .line 250
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 1329
    if-eqz p2, :cond_7

    .line 1330
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1332
    :cond_7
    return-void
.end method

.method onPause()V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/phone/CallCard;->isVideoCallWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/android/phone/CallCard;->mVideoCallPanel:Lcom/android/phone/VideoCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallPanel;->onPause()V

    .line 190
    :cond_b
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 1282
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_66

    move-object v4, p2

    .line 1287
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 1288
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 1289
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 1290
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-eq v7, v0, :cond_17

    const/4 v0, 0x4

    if-ne v7, v0, :cond_3b

    .line 1292
    :cond_17
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1299
    :goto_1b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 1302
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 1303
    .local v2, presentation:I
    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1310
    :cond_2c
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5f

    .line 1311
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1315
    :goto_37
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 1321
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_3a
    :goto_3a
    return-void

    .line 1293
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_3b
    const/4 v0, 0x1

    if-eq v7, v0, :cond_41

    const/4 v0, 0x3

    if-ne v7, v0, :cond_46

    .line 1295
    :cond_41
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_1b

    .line 1297
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5f
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_37

    .line 1317
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_66
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 1319
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method public onTickForCallTimeElapsed(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 196
    return-void
.end method

.method public refreshTime()V
    .registers 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_9

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->refreshTime()V

    .line 1529
    :cond_9
    return-void
.end method

.method public resetElapsedTime()V
    .registers 3

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    return-void
.end method

.method protected setButtonHeight(I)V
    .registers 2
    .parameter "reservedVerticalSpace"

    .prologue
    .line 2727
    return-void
.end method

.method public setElapsedTime(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 1533
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 1534
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 181
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .registers 3
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 2499
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 2500
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 2501
    return-void
.end method

.method public showThirdIncomingCallTip(Lcom/android/phone/PhoneUtils$ShowTip;)V
    .registers 6
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 1503
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 1504
    sget-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-ne p1, v0, :cond_26

    .line 1505
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0423

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    :cond_25
    :goto_25
    return-void

    .line 1508
    :cond_26
    sget-object v0, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    if-ne p1, v0, :cond_47

    .line 1509
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0424

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25

    .line 1513
    :cond_47
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    iget-object v0, p0, Lcom/android/phone/CallCard;->mShowThirdCallTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25
.end method

.method stopTimer()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 201
    return-void
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 3
    .parameter "newMode"

    .prologue
    .line 2742
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 2743
    return-void
.end method

.method protected updateCallCard(Lcom/android/internal/telephony/Call;)V
    .registers 2
    .parameter "call"

    .prologue
    .line 2715
    return-void
.end method

.method public updateCallTimeView(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 2750
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 8
    .parameter "cm"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 262
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 263
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 264
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 267
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 274
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_29

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_29

    .line 278
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 312
    :cond_28
    :goto_28
    return-void

    .line 279
    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_39

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_3d

    .line 289
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_28

    .line 307
    :cond_3d
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_28

    .line 308
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_28
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 10
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 325
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 327
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 328
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 329
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 330
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 333
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 340
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_31

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_31

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 378
    :cond_30
    :goto_30
    return-void

    .line 345
    :cond_31
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_41

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_45

    .line 355
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_30

    .line 373
    :cond_45
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_30

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_30
.end method
