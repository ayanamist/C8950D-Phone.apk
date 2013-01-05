.class public Lcom/android/phone/MSimCallCard;
.super Lcom/android/phone/CallCard;
.source "MSimCallCard.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimCallCard"


# instance fields
.field private mSubInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .registers 6
    .parameter "event"
    .parameter "view"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 174
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 177
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_15
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 183
    const-string v0, "MSimCallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method


# virtual methods
.method protected cancelTimer(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "call"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 107
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 108
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_12

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_35

    .line 110
    :cond_12
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v3, :cond_34

    .line 113
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_34

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 117
    .local v2, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, subInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    .end local v1           #subInfo:Ljava/lang/String;
    .end local v2           #subscription:I
    :cond_34
    :goto_34
    return-void

    .line 130
    :cond_35
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_3d

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_34

    .line 132
    :cond_3d
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-nez v3, :cond_34

    .line 133
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_34

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 137
    .restart local v2       #subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1       #subInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 165
    iget-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 166
    iget-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MSimCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 168
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method protected inflate(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040004

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/phone/CallCard;->onFinishInflate()V

    .line 82
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    .line 86
    return-void
.end method

.method protected updateCallCard(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "call"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 95
    .local v1, subscription:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, subInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MSimCallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
