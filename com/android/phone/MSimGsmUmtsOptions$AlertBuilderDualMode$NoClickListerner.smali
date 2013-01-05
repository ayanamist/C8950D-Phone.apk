.class Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;
.super Ljava/lang/Object;
.source "MSimGsmUmtsOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoClickListerner"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;Lcom/android/phone/MSimGsmUmtsOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;-><init>(Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 577
    const-string v0, "MSimGsmUmtsOptions"

    const-string v1, "resumeFSM update view and notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode$NoClickListerner;->this$1:Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    iget-object v0, v0, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimGsmUmtsOptions;

    invoke-static {v0}, Lcom/android/phone/MSimGsmUmtsOptions;->access$500(Lcom/android/phone/MSimGsmUmtsOptions;)V

    .line 580
    return-void
.end method
