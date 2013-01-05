.class public Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1818
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1825
    const-string v7, "state"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1830
    .local v2, enabled:Z
    const-string v7, "PhoneApp"

    const-string v10, "Setting property persist.radio.airplane_mode_on"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v10, "persist.radio.airplane_mode_on"

    if-eqz v2, :cond_31

    const-string v7, "1"

    :goto_23
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_34

    move v7, v8

    :goto_2d
    invoke-interface {v10, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1951
    .end local v2           #enabled:Z
    :cond_30
    :goto_30
    return-void

    .line 1831
    .restart local v2       #enabled:Z
    :cond_31
    const-string v7, "0"

    goto :goto_23

    :cond_34
    move v7, v9

    .line 1833
    goto :goto_2d

    .line 1834
    .end local v2           #enabled:Z
    :cond_36
    const-string v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 1835
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v10, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 1839
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto :goto_30

    .line 1840
    :cond_4e
    const-string v10, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 1841
    iget-object v9, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v10, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v9, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 1846
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto :goto_30

    .line 1847
    :cond_66
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 1856
    iget-object v10, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v10

    if-nez v10, :cond_9f

    const-string v10, "DISCONNECTED"

    const-string v11, "state"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    const-string v10, "roamingOn"

    const-string v11, "reason"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    move v1, v8

    .line 1861
    .local v1, disconnectedDueToRoaming:Z
    :goto_95
    iget-object v8, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a1

    :goto_9b
    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_30

    .end local v1           #disconnectedDueToRoaming:Z
    :cond_9f
    move v1, v9

    .line 1856
    goto :goto_95

    .line 1861
    .restart local v1       #disconnectedDueToRoaming:Z
    :cond_a1
    const/16 v7, 0xb

    goto :goto_9b

    .line 1864
    .end local v1           #disconnectedDueToRoaming:Z
    :cond_a4
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 1868
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v10, "state"

    invoke-virtual {p2, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_ce

    :goto_b6
    iput-boolean v8, v7, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    .line 1869
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_30

    :cond_ce
    move v8, v9

    .line 1868
    goto :goto_b6

    .line 1870
    :cond_d0
    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 1872
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_30

    .line 1873
    :cond_e1
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12e

    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v7, :cond_12e

    .line 1879
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x8

    const-string v12, "ss"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1881
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1882
    .local v5, reason:Ljava/lang/String;
    const-string v7, "PUK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 1883
    const-string v7, "PhoneApp"

    const-string v9, "Setting mIsSimPukLocked:true"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v8, v7, Lcom/android/phone/PhoneApp;->mIsSimPukLocked:Z

    goto/16 :goto_30

    .line 1886
    :cond_121
    const-string v7, "PhoneApp"

    const-string v8, "Setting mIsSimPukLocked:false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v9, v7, Lcom/android/phone/PhoneApp;->mIsSimPukLocked:Z

    goto/16 :goto_30

    .line 1889
    .end local v5           #reason:Ljava/lang/String;
    :cond_12e
    const-string v7, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_161

    .line 1890
    const-string v7, "phoneName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1891
    .local v3, newPhone:Ljava/lang/String;
    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Radio technology switched. Now "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is active."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_30

    .line 1893
    .end local v3           #newPhone:Ljava/lang/String;
    :cond_161
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_175

    .line 1894
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v7, p2}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V

    .line 1896
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_30

    .line 1898
    :cond_175
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c4

    .line 1899
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    .line 1900
    const-string v7, "PhoneApp"

    const-string v8, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string v7, "phoneinECMState"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1903
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_30

    .line 1909
    :cond_1a2
    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 1912
    :cond_1c4
    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1eb

    .line 1913
    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 1916
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_30

    .line 1917
    :cond_1eb
    const-string v7, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_214

    .line 1918
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v8, "ttyPreferredMode"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 1922
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_30

    .line 1923
    :cond_214
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22e

    .line 1924
    const-string v7, "android.media.EXTRA_RINGER_MODE"

    const/4 v8, 0x2

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1926
    .local v6, ringerMode:I
    if-nez v6, :cond_30

    .line 1927
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_30

    .line 1929
    .end local v6           #ringerMode:I
    :cond_22e
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23e

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25f

    .line 1937
    :cond_23e
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v7, :cond_30

    .line 1938
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    iget-object v10, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_25d

    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25d

    :goto_258
    invoke-virtual {v7, v8}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    goto/16 :goto_30

    :cond_25d
    move v8, v9

    goto :goto_258

    .line 1944
    :cond_25f
    const-string v7, "android.intent.action.ACTION_PRE_POST_PAY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1945
    const-string v7, "prePostPayState"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1947
    .local v4, prePostPay:Z
    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v8, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v9, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_282

    const/16 v7, 0x1e

    :goto_279
    invoke-virtual {v9, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_30

    :cond_282
    const/16 v7, 0x1f

    goto :goto_279
.end method
