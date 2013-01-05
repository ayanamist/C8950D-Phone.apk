.class Lcom/android/phone/SubscriptionCheckBoxPreference;
.super Landroid/preference/Preference;
.source "SetSubscription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mCheckBox1:Landroid/widget/CheckBox;

.field mCheckBox1Status:Z

.field mCheckBox2:Landroid/widget/CheckBox;

.field mCheckBox2Status:Z

.field mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field mTitle:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 629
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 631
    const-string v0, "SubscriptionCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: ENTER: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setLayoutResource(I)V

    .line 634
    iput p2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 636
    iput-boolean v3, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 637
    iput-boolean v3, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 638
    return-void
.end method


# virtual methods
.method public getSelectedSubscription()Lcom/android/phone/SubscriptionID;
    .registers 3

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 726
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 732
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    :goto_a
    return-object v0

    .line 727
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_b
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 728
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_a

    .line 730
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_16
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_a
.end method

.method public markAllUnChecked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_a

    .line 686
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 688
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_13

    .line 689
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 691
    :cond_13
    return-void
.end method

.method public markChecked(Lcom/android/phone/SubscriptionID;)V
    .registers 5
    .parameter "onSub"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 694
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_2f

    .line 695
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_23

    .line 696
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 697
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 698
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 700
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 721
    :cond_22
    :goto_22
    return-void

    .line 703
    :cond_23
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 704
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 705
    const-string v0, "SubscriptionCheckBoxPreference"

    const-string v1, "markChecked: mCheckBox1 == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 707
    :cond_2f
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_22

    .line 708
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_50

    .line 709
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 710
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 711
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 713
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_22

    .line 716
    :cond_50
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 717
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 718
    const-string v0, "SubscriptionCheckBoxPreference"

    const-string v1, "markChecked: mCheckBox2 == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v2, 0x4b

    const/4 v3, -0x2

    .line 649
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 651
    const v0, 0x1010002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    .line 652
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    const v0, 0x1010003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    .line 656
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    const v0, 0x1010001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    .line 660
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    add-int/lit16 v2, v2, -0x96

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_12

    .line 669
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 670
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 673
    :cond_12
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_23

    .line 674
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 675
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 679
    :cond_23
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_2c

    .line 680
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 682
    :cond_2c
    return-void
.end method

.method public setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2
    .parameter "onPreferenceClickListener"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 737
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 643
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_d
    return-void
.end method
