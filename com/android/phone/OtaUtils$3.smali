.class Lcom/android/phone/OtaUtils$3;
.super Ljava/lang/Object;
.source "OtaUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaUtils;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaUtils;)V
    .registers 2
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/phone/OtaUtils$3;->this$0:Lcom/android/phone/OtaUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/phone/OtaUtils$3;->this$0:Lcom/android/phone/OtaUtils;

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$100(Lcom/android/phone/OtaUtils;)V

    .line 1415
    return-void
.end method
