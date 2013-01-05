.class public Lcom/android/phone/CallCard_DSDA;
.super Lcom/android/phone/MSimCallCard;
.source "CallCard_DSDA.java"


# instance fields
.field private mActiveCallButton:Landroid/widget/Button;

.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
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
    .line 87
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    return-object v0
.end method

.method protected inflate(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040005

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method

.method protected isBluetoothAudioConnectedOrPending()Z
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    return v0
.end method

.method protected isBluetoothAvailable()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/phone/MSimCallCard;->onFinishInflate()V

    .line 64
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    .line 66
    return-void
.end method

.method protected setButtonHeight(I)V
    .registers 4
    .parameter "reservedVerticalSpace"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->getCompleteTouchUiHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 74
    iget-object v1, p0, Lcom/android/phone/CallCard_DSDA;->mActiveCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 3
    .parameter "inCallFragment"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 41
    if-nez p1, :cond_8

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    .line 46
    :goto_7
    return-void

    .line 44
    :cond_8
    invoke-virtual {p1}, Lcom/android/phone/InCallFragment;->getmParent()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallScreen_DSDA:Lcom/android/phone/InCallScreen_DSDA;

    goto :goto_7
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 3
    .parameter "newMode"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallFragment;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 94
    return-void
.end method

.method public updateCallTimeView(J)V
    .registers 4
    .parameter "timeElapsed"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/android/phone/CallCard_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallFragment;->updateActiveTimeInTab(J)V

    .line 105
    :cond_9
    return-void
.end method
