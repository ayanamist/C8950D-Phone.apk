.class Lcom/android/phone/InCallFragment$6;
.super Landroid/os/Handler;
.source "InCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1934
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/InCallScreen_DSDA;->mIsDestroyed:Z

    if-eqz v6, :cond_17

    .line 2176
    :cond_16
    :goto_16
    :sswitch_16
    return-void

    .line 1939
    :cond_17
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-nez v6, :cond_21

    .line 1948
    :cond_21
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_25a

    goto :goto_16

    .line 2171
    :sswitch_27
    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v6, :cond_256

    move v6, v7

    :goto_2e
    invoke-static {v9, v6}, Lcom/android/phone/InCallFragment;->access$2100(Lcom/android/phone/InCallFragment;Z)V

    goto :goto_16

    .line 1950
    :sswitch_32
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/phone/InCallFragment;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1954
    :sswitch_3c
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v7, v6}, Lcom/android/phone/InCallFragment;->access$700(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1958
    :sswitch_46
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v7, v6}, Lcom/android/phone/InCallFragment;->access$800(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto :goto_16

    .line 1962
    :sswitch_50
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-char v8, v8

    invoke-static {v7, v6, v8}, Lcom/android/phone/InCallFragment;->access$900(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;C)V

    goto :goto_16

    .line 1966
    :sswitch_5d
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1000(Lcom/android/phone/InCallFragment;)V

    goto :goto_16

    .line 1970
    :sswitch_63
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1100(Lcom/android/phone/InCallFragment;)V

    goto :goto_16

    .line 1974
    :sswitch_69
    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8, v6, v7}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_16

    .line 1978
    :sswitch_73
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 1981
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1982
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6, v9}, Lcom/android/phone/InCallFragment;->access$1202(Lcom/android/phone/InCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_16

    .line 1987
    :sswitch_8a
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v6}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto :goto_16

    .line 1997
    :sswitch_90
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v7, v6}, Lcom/android/phone/InCallFragment;->access$1300(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V

    goto/16 :goto_16

    .line 2003
    :sswitch_9b
    sget-boolean v6, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v6, :cond_16

    .line 2004
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1400(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2010
    :sswitch_a6
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v8, v6, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 2011
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1500(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2023
    :sswitch_b7
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v6}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2031
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1600(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallTouchUi_DSDA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallTouchUi_DSDA;->refreshAudioModePopup()V

    goto/16 :goto_16

    .line 2040
    :sswitch_c7
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v6

    if-nez v6, :cond_16

    .line 2047
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1700(Lcom/android/phone/InCallFragment;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 2048
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1800(Lcom/android/phone/InCallFragment;)Landroid/os/Vibrator;

    move-result-object v6

    const-wide/16 v9, 0x1e

    invoke-virtual {v6, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2051
    :cond_e2
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 2058
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$2000(Lcom/android/phone/InCallFragment;)Lcom/android/phone/CallCard_DSDA;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v10}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/android/phone/CallCard_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 2060
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/phone/InCallScreen_DSDA;->refreshRejectCallHint(I)V

    .line 2064
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v6

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    if-eq v6, v9, :cond_17a

    .line 2065
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v9}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 2066
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v8}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 2068
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v8}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v1

    .line 2069
    .local v1, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v1, :cond_170

    .line 2070
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 2071
    .local v5, tab:Landroid/app/ActionBar$Tab;
    if-eqz v5, :cond_170

    .line 2073
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 2076
    .end local v5           #tab:Landroid/app/ActionBar$Tab;
    :cond_170
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$200(Lcom/android/phone/InCallFragment;)V

    .line 2077
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6, v7}, Lcom/android/phone/InCallFragment;->access$2100(Lcom/android/phone/InCallFragment;Z)V

    .line 2080
    .end local v1           #fragment:Lcom/android/phone/InCallFragment;
    :cond_17a
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    .line 2082
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$2200(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_16

    .line 2083
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_16

    .line 2089
    :sswitch_19c
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    const-string v7, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    invoke-static {v6, v7}, Lcom/android/phone/InCallFragment;->access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V

    .line 2095
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v6}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto/16 :goto_16

    .line 2103
    :sswitch_1aa
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v6

    if-eqz v6, :cond_1b9

    .line 2105
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$200(Lcom/android/phone/InCallFragment;)V

    goto/16 :goto_16

    .line 2111
    :cond_1b9
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2117
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_16

    .line 2123
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v7}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 2125
    .restart local v5       #tab:Landroid/app/ActionBar$Tab;
    if-eqz v5, :cond_1ee

    .line 2126
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 2129
    :cond_1ee
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-virtual {v6}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 2130
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_16

    .line 2137
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #tab:Landroid/app/ActionBar$Tab;
    :sswitch_1fe
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/phone/InCallFragment;->onMMIInitiate(Landroid/os/AsyncResult;)V

    goto/16 :goto_16

    .line 2141
    :sswitch_209
    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Phone;

    invoke-static {v7, v6}, Lcom/android/phone/InCallFragment;->access$2300(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_16

    .line 2152
    :sswitch_214
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v2, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 2153
    .local v2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2155
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2156
    .local v4, phoneType:I
    if-ne v4, v11, :cond_233

    .line 2157
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v2, v9, v9}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_16

    .line 2158
    :cond_233
    if-ne v4, v7, :cond_16

    .line 2159
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v6, v7, :cond_16

    .line 2161
    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v6}, Lcom/android/phone/InCallFragment;->access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallFragment$6;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v7}, Lcom/android/phone/InCallFragment;->access$300(Lcom/android/phone/InCallFragment;)I

    move-result v7

    invoke-interface {v6, v7, v8}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto/16 :goto_16

    .end local v2           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    :cond_256
    move v6, v8

    .line 2171
    goto/16 :goto_2e

    .line 1948
    nop

    :sswitch_data_25a
    .sparse-switch
        0xb -> :sswitch_27
        0x33 -> :sswitch_1fe
        0x34 -> :sswitch_214
        0x35 -> :sswitch_209
        0x65 -> :sswitch_3c
        0x66 -> :sswitch_46
        0x67 -> :sswitch_b7
        0x68 -> :sswitch_50
        0x6a -> :sswitch_5d
        0x6b -> :sswitch_63
        0x6c -> :sswitch_69
        0x6e -> :sswitch_32
        0x72 -> :sswitch_19c
        0x73 -> :sswitch_1aa
        0x78 -> :sswitch_73
        0x79 -> :sswitch_a6
        0x7a -> :sswitch_8a
        0x7b -> :sswitch_16
        0x7c -> :sswitch_90
        0x7d -> :sswitch_c7
        0x3e9 -> :sswitch_9b
    .end sparse-switch
.end method
