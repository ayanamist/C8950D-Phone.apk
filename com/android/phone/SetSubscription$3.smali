.class Lcom/android/phone/SetSubscription$3;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 273
    move-object v1, p1

    check-cast v1, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 274
    .local v1, subPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getSelectedSubscription()Lcom/android/phone/SubscriptionID;

    move-result-object v0

    .line 276
    .local v0, checked:Lcom/android/phone/SubscriptionID;
    const-string v2, "SetSubscription"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick: KEY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v2, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne v0, v2, :cond_68

    .line 280
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v6

    if-eqz v2, :cond_4c

    .line 281
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: clearing previously selected SUB0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 286
    :cond_4c
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v1, v2, v6

    .line 290
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v5

    if-ne v1, v2, :cond_67

    .line 291
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB1->SUB0 sets subArray[1] = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v7, v2, v5

    .line 319
    :cond_67
    :goto_67
    return v5

    .line 294
    :cond_68
    sget-object v2, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne v0, v2, :cond_a0

    .line 296
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v5

    if-eqz v2, :cond_84

    .line 297
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: clearing previously selected SUB1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 300
    :cond_84
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v1, v2, v5

    .line 304
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v6

    if-ne v1, v2, :cond_67

    .line 305
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB0->SUB1 sets subArray[0] = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v7, v2, v6

    goto :goto_67

    .line 310
    :cond_a0
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v6

    if-ne v1, v2, :cond_b5

    .line 311
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB0->NONE sets subArray[0] = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v7, v2, v6

    .line 314
    :cond_b5
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v2, v2, v5

    if-ne v1, v2, :cond_67

    .line 315
    const-string v2, "SetSubscription"

    const-string v3, "onPreferenceClick: SUB1->NONE sets subArray[1] = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/android/phone/SetSubscription$3;->this$0:Lcom/android/phone/SetSubscription;

    iget-object v2, v2, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v7, v2, v5

    goto :goto_67
.end method
