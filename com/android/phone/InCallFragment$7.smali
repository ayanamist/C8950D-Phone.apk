.class Lcom/android/phone/InCallFragment$7;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3307
    iput-object p1, p0, Lcom/android/phone/InCallFragment$7;->this$0:Lcom/android/phone/InCallFragment;

    iput-object p2, p0, Lcom/android/phone/InCallFragment$7;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/android/phone/InCallFragment$7;->this$0:Lcom/android/phone/InCallFragment;

    const-string v1, "Missing voicemail AlertDialog: CANCEL handler..."

    invoke-static {v0, v1}, Lcom/android/phone/InCallFragment;->access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V

    .line 3310
    iget-object v0, p0, Lcom/android/phone/InCallFragment$7;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3311
    iget-object v0, p0, Lcom/android/phone/InCallFragment$7;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3312
    return-void
.end method
