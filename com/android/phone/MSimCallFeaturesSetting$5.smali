.class Lcom/android/phone/MSimCallFeaturesSetting$5;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallFeaturesSetting;->displayAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$5;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1804
    const-string v0, "MSimCallFeaturesSetting"

    const-string v1, "X-Divert onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return-void
.end method
