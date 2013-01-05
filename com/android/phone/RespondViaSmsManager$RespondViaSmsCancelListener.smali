.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 302
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "RespondViaSmsCancelListener.onCancel()..."

    invoke-static {v0}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 312
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 324
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/phone/RespondViaSmsManager;->sendReuestToUIElement(I)V

    .line 326
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/phone/RespondViaSmsManager;->sendReuestToUIElement(I)V

    .line 330
    return-void
.end method
