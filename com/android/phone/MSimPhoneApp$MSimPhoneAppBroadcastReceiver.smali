.class Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;
.super Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.source "MSimPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimPhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/phone/MSimPhoneApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 733
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, action:Ljava/lang/String;
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action intent recieved:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v8, "subscription"

    iget-object v9, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/MSimPhoneApp;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 737
    .local v7, subscription:I
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 743
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 746
    .local v2, enabled:Z
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_61

    .line 747
    if-eqz v2, :cond_59

    .line 748
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-ge v3, v8, :cond_60

    .line 749
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v3}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    if-nez v2, :cond_57

    const/4 v8, 0x1

    :goto_51
    invoke-interface {v9, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 749
    :cond_57
    const/4 v8, 0x0

    goto :goto_51

    .line 753
    .end local v3           #i:I
    :cond_59
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionManager;->resumeSubscriptionDSDA()V

    .line 814
    .end local v2           #enabled:Z
    :cond_60
    :goto_60
    return-void

    .line 757
    .restart local v2       #enabled:Z
    :cond_61
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_62
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-ge v3, v8, :cond_60

    .line 758
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v3}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    if-nez v2, :cond_7b

    const/4 v8, 0x1

    :goto_75
    invoke-interface {v9, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 757
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 758
    :cond_7b
    const/4 v8, 0x0

    goto :goto_75

    .line 763
    .end local v2           #enabled:Z
    .end local v3           #i:I
    :cond_7d
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f1

    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v8, :cond_f1

    .line 769
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    const-string v11, "ss"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 772
    .local v6, reason:Ljava/lang/String;
    const-string v8, "PUK"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 773
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting mIsSimPukLocked:true on sub :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v7}, Lcom/android/phone/MSimPhoneApp;->access$200(I)Lcom/android/phone/SinglePhone;

    move-result-object v8

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    goto :goto_60

    .line 776
    :cond_d0
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting mIsSimPukLocked:false on sub :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {v7}, Lcom/android/phone/MSimPhoneApp;->access$200(I)Lcom/android/phone/SinglePhone;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    goto/16 :goto_60

    .line 779
    .end local v6           #reason:Ljava/lang/String;
    :cond_f1
    const-string v8, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_124

    .line 780
    const-string v8, "phoneName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 781
    .local v4, newPhone:Ljava/lang/String;
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Radio technology switched. Now "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is active."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v7}, Lcom/android/phone/MSimPhoneApp;->initForNewRadioTechnology(I)V

    goto/16 :goto_60

    .line 783
    .end local v4           #newPhone:Ljava/lang/String;
    :cond_124
    const-string v8, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 784
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v7}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 785
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-static {v8, p2, v5}, Lcom/android/phone/MSimPhoneApp;->access$300(Lcom/android/phone/MSimPhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    .line 787
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-static {v8}, Lcom/android/phone/MSimPhoneApp;->access$400(Lcom/android/phone/MSimPhoneApp;)V

    goto/16 :goto_60

    .line 789
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_13e
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a2

    .line 790
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v7}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 791
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_184

    .line 792
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Emergency Callback Mode arrived in PhoneApp on Sub ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v8, "phoneinECMState"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 796
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 797
    .local v1, ecbmIntent:Landroid/content/Intent;
    const-string v8, "subscription"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_60

    .line 803
    .end local v1           #ecbmIntent:Landroid/content/Intent;
    :cond_184
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 806
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1a2
    const-string v8, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d9

    .line 807
    const-string v8, "MSimPhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Default subscription changed, subscription: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-static {v8, v7}, Lcom/android/phone/MSimPhoneApp;->access$502(Lcom/android/phone/MSimPhoneApp;I)I

    .line 809
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v8, v7}, Lcom/android/phone/MSimPhoneApp;->setDefaultPhone(I)V

    .line 810
    iget-object v8, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v9, p0, Lcom/android/phone/MSimPhoneApp$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneInterfaceManager;->setPhone(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_60

    .line 812
    :cond_1d9
    invoke-super {p0, p1, p2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_60
.end method
