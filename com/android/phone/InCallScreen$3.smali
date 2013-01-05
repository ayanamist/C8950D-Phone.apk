.class Lcom/android/phone/InCallScreen$3;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {v0, p2}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 740
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 744
    return-void
.end method
