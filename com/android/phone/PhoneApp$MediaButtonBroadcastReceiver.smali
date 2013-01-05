.class public Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 1966
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 1969
    .local v3, event:Landroid/view/KeyEvent;
    if-eqz v3, :cond_88

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_88

    .line 1974
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 1977
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1979
    .local v2, currentActivePhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_3b

    .line 1980
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v5

    if-eq v5, v7, :cond_4c

    .line 1981
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1999
    :cond_3b
    :goto_3b
    if-eqz v2, :cond_7d

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2005
    .end local v2           #currentActivePhone:Lcom/android/internal/telephony/Phone;
    .local v1, consumed:Z
    :goto_41
    if-eqz v1, :cond_4b

    .line 2009
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 2010
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 2022
    .end local v1           #consumed:Z
    :cond_4b
    :goto_4b
    return-void

    .line 1982
    .restart local v2       #currentActivePhone:Lcom/android/internal/telephony/Phone;
    :cond_4c
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    if-eq v5, v7, :cond_76

    .line 1984
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 1985
    .local v0, altSub:I
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 1986
    .local v4, hasRingingCall:Z
    if-eqz v4, :cond_6f

    .line 1987
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_3b

    .line 1989
    :cond_6f
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_3b

    .line 1993
    .end local v0           #altSub:I
    .end local v4           #hasRingingCall:Z
    :cond_76
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_3b

    .line 1999
    :cond_7d
    const/4 v1, 0x0

    goto :goto_41

    .line 2001
    .end local v2           #currentActivePhone:Lcom/android/internal/telephony/Phone;
    :cond_7f
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v1

    .restart local v1       #consumed:Z
    goto :goto_41

    .line 2013
    .end local v1           #consumed:Z
    :cond_88
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_4b

    .line 2019
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_4b
.end method
