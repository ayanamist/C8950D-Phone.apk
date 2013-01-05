.class Lcom/android/phone/XDivertCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "XDivertCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/XDivertCheckBoxPreference;->displayAlertMessage(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertCheckBoxPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference$1;->this$0:Lcom/android/phone/XDivertCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 235
    const-string v0, "XDivertCheckBoxPreference"

    const-string v1, "displayAlertMessage:  onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
