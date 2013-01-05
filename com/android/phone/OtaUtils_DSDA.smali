.class public Lcom/android/phone/OtaUtils_DSDA;
.super Lcom/android/phone/OtaUtils;
.source "OtaUtils_DSDA.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "OtaUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInCallFragment:Lcom/android/phone/InCallFragment;

.field private mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "interactive"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    .line 39
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 173
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public static setupOtaspCall(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "sub"

    .prologue
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupOtaspCall(): preparing for OTASP call to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 109
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_25

    .line 112
    const-string v2, "OtaUtils"

    const-string v3, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_25
    new-instance v2, Lcom/android/phone/OtaUtils_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/phone/OtaUtils_DSDA;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- created OtaUtils: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 120
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v2, v3}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 122
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 123
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v2, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v3, v2, p1

    .line 125
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_63

    .line 126
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 128
    :cond_63
    return-void
.end method


# virtual methods
.method public clearUiWidgets()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    .line 99
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    .line 100
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 101
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 102
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 103
    return-void
.end method

.method protected endInCallScreenSession()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession()V

    .line 241
    return-void
.end method

.method protected finishActivity()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getmSubscription()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->endInCallScreenSession(IZ)V

    .line 235
    return-void
.end method

.method protected getInCallScreen()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method protected handleOtaCallEnd()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->handleOtaCallEnd()V

    .line 266
    return-void
.end method

.method protected initOtaInCallScreen()V
    .registers 4

    .prologue
    .line 183
    const-string v0, "initOtaInCallScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const/high16 v2, 0x101

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    .line 191
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    .line 197
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->setOnclickListeners()V

    .line 206
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f0700b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 209
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_db

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOtaInCallScreen: couldn\'t find otaDtmfDialerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_db
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 217
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 221
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startDialerSession()V

    .line 223
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 224
    return-void
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method protected requestCloseOtaFailureNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->requestCloseOtaFailureNotice(J)V

    .line 250
    return-void
.end method

.method protected requestCloseSpcErrorNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen_DSDA;->requestCloseSpcErrorNotice(J)V

    .line 254
    return-void
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    .line 46
    return-void
.end method

.method protected setOnclickListeners()V
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    .line 158
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0700b4

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0700b5

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0700b9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const v2, 0x7f0700ba

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method protected setSpeaker(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_20

    .line 134
    const-string v0, "non-interactive mode, ignoring setSpeaker."

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 151
    :goto_1f
    return-void

    .line 140
    :cond_20
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_2e

    .line 142
    const-string v0, "no change. returning"

    invoke-static {v0}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    goto :goto_1f

    .line 146
    :cond_2e
    if-eqz p1, :cond_51

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 148
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 150
    :cond_51
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1f
.end method

.method protected updateScreen()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 229
    return-void
.end method

.method public updateUiWidgets(Lcom/android/phone/InCallScreen_DSDA;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V
    .registers 8
    .parameter "inCallScreen"
    .parameter "inCallPanel"
    .parameter "inCallTouchUi"
    .parameter "callCard"

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiWidgets()...  mInCallScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 65
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_24

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "updateUiWidgets() called in non-interactive mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_24
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v1, :cond_2e

    .line 70
    const-string v1, "updateUiWidgets(): widgets already set up, nothing to do..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils_DSDA;->log(Ljava/lang/String;)V

    .line 95
    :goto_2d
    return-void

    .line 74
    :cond_2e
    iput-object p1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallScreen:Lcom/android/phone/InCallScreen_DSDA;

    .line 75
    iput-object p2, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    .line 76
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 77
    iput-object p4, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 78
    new-instance v1, Lcom/android/phone/OtaUtils$OtaWidgetData;

    invoke-direct {v1, p0}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;)V

    iput-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 84
    iget-object v1, p0, Lcom/android/phone/OtaUtils_DSDA;->mInCallFragment:Lcom/android/phone/InCallFragment;

    iget-object v1, v1, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 86
    .local v0, otaCallCardStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_4f

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 93
    :cond_4f
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->readXmlSettings()V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils_DSDA;->initOtaInCallScreen()V

    goto :goto_2d
.end method
