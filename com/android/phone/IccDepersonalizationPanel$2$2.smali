.class Lcom/android/phone/IccDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccDepersonalizationPanel;->dismiss()V

    .line 111
    return-void
.end method
