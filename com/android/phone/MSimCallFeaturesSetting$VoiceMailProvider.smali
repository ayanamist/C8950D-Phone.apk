.class Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->this$0:Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 286
    iput-object p3, p0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 287
    return-void
.end method
