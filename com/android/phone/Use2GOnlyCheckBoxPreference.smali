.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Use2GOnlyCheckBoxPreference"

.field private static mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field private static mPhone:Lcom/android/internal/telephony/Phone;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 62
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    :goto_19
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 68
    sget-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    .line 73
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 75
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mStateHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$PhoneStateHandler;

    const/16 v3, 0xd6

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    return-void

    .line 64
    .end local v0           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_19
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static updatePhone(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 97
    sput-object p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    const-string v0, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhone subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 101
    return-void
.end method


# virtual methods
.method public handlePref2g()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_f

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 200
    :goto_e
    return-void

    .line 198
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_e
.end method

.method protected onAttachedToActivity()V
    .registers 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onAttachedToActivity()V

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->handlePref2g()V

    .line 191
    return-void
.end method

.method protected onClick()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 84
    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    iget-boolean v2, v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->mClicked:Z

    if-nez v2, :cond_38

    .line 85
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 86
    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    iput-boolean v1, v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->mClicked:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v1

    .line 88
    .local v0, networkType:I
    :goto_15
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v2, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v3, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 94
    .end local v0           #networkType:I
    :cond_38
    return-void

    .line 87
    :cond_39
    const/4 v0, 0x0

    goto :goto_15
.end method
