.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 204
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_e8

    .line 303
    :cond_7
    :goto_7
    return-void

    .line 207
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 210
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 211
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5, v7}, Lcom/android/phone/NetworkSetting;->access$102(Lcom/android/phone/NetworkSetting;Z)Z

    goto :goto_7

    .line 214
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :sswitch_1b
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "NetworkSetting, msg received, start to scan network..."

    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 218
    :try_start_22
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v6}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_31} :catch_e4

    .line 221
    :goto_31
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5, v8}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;Z)V

    goto :goto_7

    .line 225
    :sswitch_37
    iget-object v6, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    goto :goto_7

    .line 231
    :sswitch_43
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 234
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v5}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v5, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_85

    .line 239
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "[liyou] inservice!!"

    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)V

    .line 250
    :goto_6d
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 251
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v5, "reset_to_automatic_mode"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, isResetToAutomaticMode:I
    if-ne v2, v7, :cond_7

    .line 254
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)V

    goto :goto_7

    .line 244
    .end local v2           #isResetToAutomaticMode:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_85
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 245
    .local v4, tempEX:Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v6, "[liyou] no service!!"

    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5, v4}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 267
    .end local v4           #tempEX:Ljava/lang/Throwable;
    :sswitch_97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    goto/16 :goto_7

    .line 280
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_a1
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v5, v5, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v5, :cond_ae

    .line 281
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 283
    :cond_ae
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v5}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 286
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_c8

    .line 288
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 291
    :cond_c8
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v5, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_dd

    .line 293
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_7

    .line 296
    :cond_dd
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_7

    .line 219
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catch_e4
    move-exception v5

    goto/16 :goto_31

    .line 204
    nop

    :sswitch_data_e8
    .sparse-switch
        0x64 -> :sswitch_37
        0xc8 -> :sswitch_97
        0x12c -> :sswitch_a1
        0x1f4 -> :sswitch_1b
        0x258 -> :sswitch_8
        0x3e8 -> :sswitch_43
    .end sparse-switch
.end method
