.class Lcom/android/phone/NetworkSetting$5;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
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
    .line 672
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 675
    return-void
.end method
