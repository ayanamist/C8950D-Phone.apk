.class Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)V
    .registers 2
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 791
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 792
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_50

    .line 812
    :goto_9
    return-void

    .line 794
    :pswitch_a
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SUPPLY_PIN_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    monitor-enter v2

    .line 796
    :try_start_14
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_49

    .line 797
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_42

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_42

    .line 800
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    .line 807
    :goto_32
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$802(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z

    .line 808
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 809
    monitor-exit v2

    goto :goto_9

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_3f

    throw v1

    .line 802
    :cond_42
    :try_start_42
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I

    goto :goto_32

    .line 805
    :cond_49
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_3f

    goto :goto_32

    .line 792
    :pswitch_data_50
    .packed-switch 0x64
        :pswitch_a
    .end packed-switch
.end method
