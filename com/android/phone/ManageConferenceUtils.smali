.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ManageConferenceUtils"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field protected mButtonManageConferenceDone:Landroid/widget/Button;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 3
    .parameter "cm"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 81
    :cond_c
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 82
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 387
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method


# virtual methods
.method public SetInCallInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 86
    return-void
.end method

.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 283
    const-string v0, ""

    .line 284
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 285
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 286
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_34

    .line 287
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 289
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 294
    :cond_23
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_44

    .line 295
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0005

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_34
    :goto_34
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 316
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :goto_43
    return-void

    .line 296
    :cond_44
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v3, v4, :cond_56

    .line 297
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 299
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0004

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 306
    :cond_62
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 307
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_34

    .line 319
    :cond_67
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 333
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 336
    :cond_24
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 340
    return-void
.end method

.method protected getManageConferenceViewStub(I)Landroid/view/ViewStub;
    .registers 3
    .parameter "id"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public getNumCallersInConference()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

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
    .line 392
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public initManageConferencePanel()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    .line 90
    sget-boolean v4, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "initManageConferencePanel()..."

    invoke-direct {p0, v4}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 91
    :cond_a
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v4, :cond_7d

    .line 92
    sget-boolean v4, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v4, :cond_17

    const-string v4, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v4}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 97
    :cond_17
    const v4, 0x7f07006f

    invoke-virtual {p0, v4}, Lcom/android/phone/ManageConferenceUtils;->getManageConferenceViewStub(I)Landroid/view/ViewStub;

    move-result-object v1

    .line 98
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 100
    .local v2, v:Landroid/view/View;
    const v4, 0x7f070096

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 102
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v4, :cond_39

    .line 103
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_39
    const v4, 0x7f070097

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Chronometer;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 109
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0190

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 112
    new-array v4, v7, [Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 114
    new-array v3, v7, [I

    fill-array-data v3, :array_7e

    .line 116
    .local v3, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5e
    if-ge v0, v7, :cond_6f

    .line 117
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v5, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 121
    :cond_6f
    const v4, 0x7f0700a0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->setOnclickListener()V

    .line 128
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #viewGroupIdList:[I
    :cond_7d
    return-void

    .line 114
    :array_7e
    .array-data 0x4
        0x9bt 0x0t 0x7t 0x7ft
        0x9ct 0x0t 0x7t 0x7ft
        0x9dt 0x0t 0x7t 0x7ft
        0x9et 0x0t 0x7t 0x7ft
        0x9ft 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 372
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerinfo query complete, updating UI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    :cond_1a
    move-object v0, p2

    .line 375
    check-cast v0, Landroid/view/ViewGroup;

    .line 376
    .local v0, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 379
    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07002d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f07002e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p3, v1, v2, v3}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 383
    return-void
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 352
    :cond_24
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 362
    return-void
.end method

.method protected setOnclickListener()V
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method public setPanelVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 135
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    :cond_c
    return-void

    .line 135
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public startConferenceTime(J)V
    .registers 4
    .parameter "base"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 147
    :cond_e
    return-void
.end method

.method public stopConferenceTime()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 156
    :cond_9
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v5, 0x0

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 172
    sget-boolean v6, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v6, :cond_23

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 177
    :cond_23
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 178
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 179
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_33

    if-nez v3, :cond_48

    :cond_33
    const/4 v0, 0x1

    .line 181
    .local v0, canSeparate:Z
    :goto_34
    const/4 v4, 0x0

    .local v4, i:I
    :goto_35
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4f

    .line 182
    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v6, :cond_4a

    .line 184
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 185
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 181
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_48
    move v0, v5

    .line 179
    goto :goto_34

    .line 188
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_4a
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_45

    .line 191
    :cond_4f
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .registers 15
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v10, 0x0

    .line 207
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_25

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateManageConferenceRow("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")...  connection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 209
    :cond_25
    if-eqz p2, :cond_d9

    .line 211
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07002b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 216
    .local v0, endButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07002f

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 218
    .local v6, separateButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07002c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 220
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07002e

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 222
    .local v4, numberTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f07002d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    .local v5, numberTypeTextView:Landroid/widget/TextView;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_93

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nameTextView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 231
    :cond_93
    new-instance v1, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 237
    .local v1, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    if-eqz p3, :cond_d4

    .line 240
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 246
    .local v7, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 256
    .end local v7           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_a8
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUtils;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    invoke-static {v8, p2, p0, v9}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 263
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v8, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v8, :cond_ce

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 266
    :cond_ce
    iget-object v8, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v8, v3, v5, v4}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 272
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :goto_d3
    return-void

    .line 249
    .restart local v0       #endButton:Landroid/widget/ImageButton;
    .restart local v1       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTextView:Landroid/widget/TextView;
    .restart local v5       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v6       #separateButton:Landroid/widget/ImageButton;
    :cond_d4
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a8

    .line 270
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :cond_d9
    iget-object v8, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d3
.end method
