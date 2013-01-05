.class Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_VP:I = 0x0

.field private static final MESSAGE_SET_VP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 82
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 84
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setEnabled(Z)V

    .line 93
    :goto_e
    return-void

    .line 87
    :cond_f
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 88
    .local v1, enable:I
    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v4, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setChecked(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_2f
    move v2, v3

    .line 88
    goto :goto_1c
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 98
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 103
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 77
    :goto_5
    return-void

    .line 71
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 74
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 69
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
