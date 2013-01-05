.class Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
.super Ljava/lang/Thread;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockSim"
.end annotation


# static fields
.field private static final SUPPLY_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:I

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .registers 3
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 758
    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z

    .line 759
    iput v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:I

    .line 768
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 769
    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 754
    iput p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:I

    return p1
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 774
    monitor-enter p0

    .line 775
    :try_start_4
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim$1;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    .line 801
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 802
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 803
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 804
    return-void

    .line 802
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method declared-synchronized unlockSim(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 815
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v2, :cond_15

    .line 817
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 818
    :catch_9
    move-exception v1

    .line 819
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 815
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 822
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 824
    .local v0, callback:Landroid/os/Message;
    if-nez p1, :cond_3c

    .line 825
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 830
    :goto_24
    iget-boolean v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mDone:Z
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_12

    if-nez v2, :cond_42

    .line 832
    :try_start_28
    const-string v2, "MSimPhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_32} :catch_33

    goto :goto_24

    .line 834
    :catch_33
    move-exception v1

    .line 836
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_24

    .line 827
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3c
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_24

    .line 839
    :cond_42
    const-string v2, "MSimPhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->mResult:I
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_12

    monitor-exit p0

    return v2
.end method
