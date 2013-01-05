.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# static fields
.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final DBG:Z = false

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final IN_CALL_WIDGET_TRANSITION_TIME:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final SEND_SMS_ID:I = 0x1


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneApp;

.field protected mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field protected mDialpadButton:Landroid/widget/CompoundButton;

.field protected mEndButton:Landroid/widget/ImageButton;

.field protected mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field protected mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

.field private mInternalRespondViaSmsCanceled:Z

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field protected mMergeButton:Landroid/widget/ImageButton;

.field protected mMuteButton:Landroid/widget/CompoundButton;

.field protected mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 135
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 166
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040018

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 172
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/MultiWaveView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    return-object v0
.end method

.method private hideIncomingCallWidget(I)V
    .registers 6
    .parameter "whichHandler"

    .prologue
    .line 1145
    move v1, p1

    .line 1148
    .local v1, whichHandlerFinal:I
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1179
    :cond_11
    :goto_11
    return-void

    .line 1154
    :cond_12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1155
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1156
    new-instance v2, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1178
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1475
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void
.end method

.method private showAudioModePopup()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 891
    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 895
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f0f

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 897
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 898
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 903
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 906
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 913
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f0700d8

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 914
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 920
    const v7, 0x7f0700d9

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 921
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f0700da

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 922
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 923
    .local v5, usingHeadset:Z
    if-nez v5, :cond_7a

    move v7, v8

    :goto_57
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 924
    if-nez v5, :cond_5d

    move v9, v8

    :cond_5d
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 925
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 926
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 931
    const v7, 0x7f0700db

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 932
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 936
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 941
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 942
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_7a
    move v7, v9

    .line 923
    goto :goto_57
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .registers 9
    .parameter "ringingCall"

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1188
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetsFirstTriggerStatus(Z)V

    .line 1190
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1191
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_19

    .line 1192
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 1193
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1201
    :cond_19
    invoke-static {p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1202
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_5b

    .line 1205
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1206
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1208
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 1223
    :goto_37
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->reset(Z)V

    .line 1226
    const-string v2, "ro.config.always_animation"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1228
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->init()V

    .line 1231
    :cond_49
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1243
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1244
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1251
    return-void

    .line 1212
    :cond_5b
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1213
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1215
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_37
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .registers 14
    .parameter "inCallControlState"

    .prologue
    const/4 v11, 0x1

    const/16 v9, 0xff

    const/4 v10, 0x0

    .line 777
    const/4 v7, 0x0

    .line 780
    .local v7, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 783
    .local v5, showMoreIndicator:Z
    const/4 v6, 0x0

    .line 784
    .local v6, showSpeakerIcon:Z
    const/4 v4, 0x0

    .line 785
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 787
    .local v3, showBluetoothIcon:Z
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v8, :cond_6c

    .line 790
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 797
    const/4 v5, 0x1

    .line 798
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v8, :cond_64

    .line 799
    const/4 v3, 0x1

    .line 837
    :goto_18
    const/4 v0, 0x0

    .line 838
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 840
    .local v1, VISIBLE:I
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 843
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v8, 0x7f0700d3

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v7, :cond_8c

    move v8, v9

    :goto_2d
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 846
    const v8, 0x7f0700d4

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_8e

    move v8, v9

    :goto_3a
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 849
    const v8, 0x7f0700d5

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v3, :cond_90

    move v8, v9

    :goto_47
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 852
    const v8, 0x7f0700d6

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_92

    move v8, v9

    :goto_54
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 855
    const v8, 0x7f0700d7

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_94

    :goto_60
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 857
    return-void

    .line 800
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_64
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v8, :cond_6a

    .line 801
    const/4 v6, 0x1

    goto :goto_18

    .line 803
    :cond_6a
    const/4 v4, 0x1

    goto :goto_18

    .line 809
    :cond_6c
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v8, :cond_7f

    .line 812
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 816
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 819
    const/4 v7, 0x1

    .line 820
    const/4 v6, 0x1

    goto :goto_18

    .line 826
    :cond_7f
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 827
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 830
    const/4 v7, 0x1

    .line 831
    const/4 v6, 0x1

    goto :goto_18

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_8c
    move v8, v10

    .line 843
    goto :goto_2d

    :cond_8e
    move v8, v10

    .line 846
    goto :goto_3a

    :cond_90
    move v8, v10

    .line 849
    goto :goto_47

    :cond_92
    move v8, v10

    .line 852
    goto :goto_54

    :cond_94
    move v9, v10

    .line 855
    goto :goto_60
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V
    .registers 11
    .parameter "cm"
    .parameter "phoneType"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 592
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v2, 0x0

    .line 598
    .local v2, showExtraButtonRow:Z
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_bc

    .line 599
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 600
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 601
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 629
    :goto_1e
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_31

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_31

    .line 630
    if-eq p2, v1, :cond_2a

    if-ne p2, v5, :cond_10b

    .line 637
    :cond_2a
    const-string v4, "InCallTouchUi"

    const-string v5, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_31
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 653
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 654
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 657
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 658
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 661
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 667
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_126

    .line 668
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 669
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 670
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 671
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 699
    :goto_71
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_80

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_80

    .line 705
    const-string v4, "InCallTouchUi"

    const-string v5, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_80
    if-ne p2, v7, :cond_16b

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_16b

    .line 713
    .local v1, showCdmaMerge:Z
    :goto_86
    if-eqz v1, :cond_16e

    .line 714
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 715
    const/4 v2, 0x1

    .line 719
    :goto_8e
    if-ne p2, v7, :cond_9f

    .line 720
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_9f

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_9f

    .line 726
    const-string v4, "InCallTouchUi"

    const-string v5, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_9f
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v4, :cond_175

    .line 734
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 735
    const/4 v2, 0x1

    .line 736
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 744
    :goto_b0
    if-eqz v2, :cond_17c

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v4, :cond_17c

    .line 745
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 749
    :goto_bb
    return-void

    .line 602
    .end local v1           #showCdmaMerge:Z
    :cond_bc
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_fa

    .line 603
    if-ne p2, v7, :cond_c9

    .line 607
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1e

    .line 608
    :cond_c9
    if-eq p2, v1, :cond_d0

    if-eq p2, v5, :cond_d0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_e1

    .line 611
    :cond_d0
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 613
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1e

    .line 615
    :cond_e1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    :cond_fa
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 626
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 627
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1e

    .line 639
    :cond_10b
    if-eq p2, v7, :cond_31

    .line 644
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    :cond_126
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_13b

    .line 673
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 675
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_71

    .line 687
    :cond_13b
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v4, :cond_15a

    .line 688
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 689
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 690
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 691
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 692
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_71

    .line 694
    :cond_15a
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 695
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 696
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_71

    :cond_16b
    move v1, v3

    .line 711
    goto/16 :goto_86

    .line 717
    .restart local v1       #showCdmaMerge:Z
    :cond_16e
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8e

    .line 738
    :cond_175
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_b0

    .line 747
    :cond_17c
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_bb
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 952
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 956
    :cond_f
    return-void
.end method

.method protected enableOrDisableFunctionalButtons(Z)V
    .registers 2
    .parameter "isEnable"

    .prologue
    .line 1515
    return-void
.end method

.method public getCompleteTouchUiHeight()I
    .registers 2

    .prologue
    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchUiHeight()I
    .registers 4

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1047
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1050
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1056
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1058
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
    .line 1496
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    return-object v0
.end method

.method protected handleAudioButtonClick()V
    .registers 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 871
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_c

    .line 873
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 879
    :goto_b
    return-void

    .line 876
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->toggleSpeaker()V

    goto :goto_b
.end method

.method protected handleOnscreenButtonClick(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1481
    return-void
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method protected okToShowInCallTouchUi()Z
    .registers 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 531
    .local v0, id:I
    packed-switch v0, :pswitch_data_32

    .line 555
    :pswitch_7
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_29
    return-void

    .line 545
    :pswitch_2a
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_29

    .line 551
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_29

    .line 531
    :pswitch_data_32
    .packed-switch 0x7f070079
        :pswitch_2a
        :pswitch_7
        :pswitch_7
        :pswitch_2a
        :pswitch_7
        :pswitch_7
        :pswitch_2a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_7
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1019
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 187
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/MultiWaveView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    .line 188
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v1, p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 191
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 195
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 200
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 202
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 204
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 206
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 208
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 210
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 228
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 231
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 233
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 237
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 256
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 257
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1076
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 8
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1272
    packed-switch p2, :pswitch_data_2a

    .line 1290
    const-string v2, "InCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v1, 0x0

    .line 1293
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1300
    .local v0, hintColorResId:I
    :goto_23
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->updateIncomingCallWidgetHint(II)V

    .line 1304
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_26
    return-void

    .line 1275
    :pswitch_27
    const/4 v1, 0x0

    .line 1276
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1277
    .restart local v0       #hintColorResId:I
    goto :goto_23

    .line 1272
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public onIncomingRing()V
    .registers 1

    .prologue
    .line 1317
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 983
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_26

    .line 984
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :goto_25
    return v3

    .line 988
    :cond_26
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 1002
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 990
    :pswitch_5a
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 996
    :pswitch_60
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 999
    :pswitch_66
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_25

    .line 988
    :pswitch_data_6c
    .packed-switch 0x7f0700d8
        :pswitch_5a
        :pswitch_60
        :pswitch_60
        :pswitch_66
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1080
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 7
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 1092
    invoke-direct {p0, p2}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 1098
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1107
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 1108
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :goto_2e
    return-void

    .line 1112
    :cond_2f
    packed-switch p2, :pswitch_data_64

    .line 1129
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :goto_4a
    invoke-virtual {p0, v3, v3}, Lcom/android/phone/InCallTouchUi;->updateIncomingCallWidgetHint(II)V

    goto :goto_2e

    .line 1115
    :pswitch_4e
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1120
    :pswitch_55
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1125
    :pswitch_5c
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->handleOnscreenButtonClick(I)V

    goto :goto_4a

    .line 1112
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_10

    .line 970
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 972
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 974
    :cond_10
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 177
    return-void
.end method

.method public setInternalRespondViaSmsCanceled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 132
    return-void
.end method

.method protected switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 3
    .parameter "newMode"

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 1505
    return-void
.end method

.method protected toggleSpeaker()V
    .registers 2

    .prologue
    .line 1500
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 1501
    return-void
.end method

.method public triggerPing()V
    .registers 5

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1335
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1379
    :cond_b
    :goto_b
    return-void

    .line 1339
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    if-nez v0, :cond_18

    .line 1342
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1349
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1356
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->ping()V

    .line 1376
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "cm"

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 569
    .local v0, phoneType:I
    invoke-direct {p0, p1, v0}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V

    .line 571
    return-void
.end method

.method protected updateIncomingCallWidgetHint(II)V
    .registers 5
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    const/4 v1, 0x0

    .line 1492
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1493
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .registers 16
    .parameter "cm"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_f

    .line 268
    const-string v8, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 394
    :cond_e
    :goto_e
    return-void

    .line 273
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 276
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v6, 0x0

    .line 277
    .local v6, showIncomingCallControls:Z
    const/4 v5, 0x0

    .line 279
    .local v5, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 280
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 287
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_69

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_69

    .line 296
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 298
    const/4 v6, 0x1

    .line 305
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 307
    .local v2, now:J
    const/16 v0, 0x3e8

    .line 308
    .local v0, DELAY_TIME:I
    iget-wide v8, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v8, v2, v8

    if-gez v8, :cond_50

    .line 309
    const-string v8, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 310
    const/4 v6, 0x0

    .line 312
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    if-eqz v8, :cond_50

    .line 313
    const/4 v6, 0x1

    .line 317
    :cond_50
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-virtual {v8}, Lcom/android/phone/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v8

    if-ne v8, v13, :cond_5b

    if-nez v6, :cond_5b

    .line 318
    const/4 v5, 0x1

    .line 335
    .end local v0           #DELAY_TIME:I
    .end local v2           #now:J
    :cond_5b
    :goto_5b
    iput-boolean v12, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 340
    if-eqz v6, :cond_71

    if-eqz v5, :cond_71

    .line 341
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 325
    :cond_69
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallTouchUi()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 326
    const/4 v5, 0x1

    goto :goto_5b

    .line 345
    :cond_71
    if-eqz v5, :cond_9a

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 348
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :goto_7b
    if-eqz v6, :cond_a0

    .line 356
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 365
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v8, v12}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 385
    :goto_89
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_95

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v8, :cond_e

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v8, :cond_e

    .line 392
    :cond_95
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_e

    .line 351
    :cond_9a
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7b

    .line 369
    :cond_a0
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 374
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_89
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .registers 16
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v12, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_d

    .line 404
    const-string v8, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 522
    :cond_c
    :goto_c
    return-void

    .line 409
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 412
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v6, 0x0

    .line 413
    .local v6, showIncomingCallControls:Z
    const/4 v5, 0x0

    .line 415
    .local v5, showInCallControls:Z
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 416
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 423
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_5e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_5e

    .line 432
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 434
    const/4 v6, 0x1

    .line 441
    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 442
    .local v1, now:J
    iget-wide v8, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    cmp-long v8, v1, v8

    if-gez v8, :cond_50

    .line 443
    const-string v8, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 444
    const/4 v6, 0x0

    .line 446
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    if-eqz v8, :cond_50

    .line 447
    const/4 v6, 0x1

    .line 461
    .end local v1           #now:J
    :cond_50
    :goto_50
    iput-boolean v12, p0, Lcom/android/phone/InCallTouchUi;->mInternalRespondViaSmsCanceled:Z

    .line 467
    if-eqz v6, :cond_66

    if-eqz v5, :cond_66

    .line 468
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 453
    :cond_5e
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallTouchUi()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 454
    const/4 v5, 0x1

    goto :goto_50

    .line 472
    :cond_66
    if-eqz v5, :cond_9b

    .line 475
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 476
    .local v3, phoneType:I
    invoke-direct {p0, p1, v3}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;I)V

    .line 478
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .end local v3           #phoneType:I
    :goto_7c
    if-eqz v6, :cond_a3

    .line 486
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 495
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v8, v12}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 513
    :goto_8a
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_96

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v8, :cond_c

    .line 520
    :cond_96
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_c

    .line 481
    :cond_9b
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7c

    .line 498
    :cond_a3
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V

    .line 502
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_8a
.end method
