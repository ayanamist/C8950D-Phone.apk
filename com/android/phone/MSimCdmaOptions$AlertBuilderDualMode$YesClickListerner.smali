.class Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;
.super Ljava/lang/Object;
.source "MSimCdmaOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YesClickListerner"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;Lcom/android/phone/MSimCdmaOptions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;-><init>(Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 544
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v1}, Lcom/android/phone/MSimCdmaOptions;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 546
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-static {v1}, Lcom/android/phone/MSimCdmaOptions;->access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 548
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 566
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_21
    return-void

    .line 555
    :cond_22
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v2, v2, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    iget-object v2, v2, Lcom/android/phone/MSimCdmaOptions;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v2, v2, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-static {v2}, Lcom/android/phone/MSimCdmaOptions;->access$400(Lcom/android/phone/MSimCdmaOptions;)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    .line 562
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-static {v1}, Lcom/android/phone/MSimCdmaOptions;->access$500(Lcom/android/phone/MSimCdmaOptions;)V

    .line 564
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode$YesClickListerner;->this$1:Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    iget-object v1, v1, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->this$0:Lcom/android/phone/MSimCdmaOptions;

    invoke-static {v1}, Lcom/android/phone/MSimCdmaOptions;->access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->showDialog(I)V

    goto :goto_21
.end method
