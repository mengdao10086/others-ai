.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# instance fields
.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 138
    :goto_18
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z
    .registers 2

    .line 679
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1c

    .line 680
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1c

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .registers 9

    .line 264
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    .line 267
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_2a

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2a
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_6f

    .line 272
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 273
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_6c

    .line 274
    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 275
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_6f
    return-void
.end method

.method public commit()I
    .registers 2

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .registers 4

    .line 315
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x2

    .line 316
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroidx/fragment/app/LogWriter;

    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 320
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_33
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 324
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-eqz v0, :cond_43

    .line 325
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->allocBackStackIndex()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_46

    :cond_43
    const/4 v0, -0x1

    .line 327
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 329
    :goto_46
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 330
    iget p1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return p1

    .line 315
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public commitNowAllowingStateLoss()V
    .registers 3

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 311
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    return-void
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 5

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 184
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_cc

    .line 63
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 66
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    if-eqz v0, :cond_38

    .line 67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_38
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    if-nez v0, :cond_40

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    if-eqz v0, :cond_5f

    .line 71
    :cond_40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    :cond_5f
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    if-nez v0, :cond_67

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    if-eqz v0, :cond_86

    .line 77
    :cond_67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_86
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a9

    .line 83
    :cond_8e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    :cond_a9
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_b1

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_cc

    .line 89
    :cond_b1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    :cond_cc
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_197

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e3
    if-ge v1, v0, :cond_197

    .line 100
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 102
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_198

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_126

    .line 113
    :pswitch_106
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_126

    .line 112
    :pswitch_109
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_126

    .line 111
    :pswitch_10c
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_126

    .line 110
    :pswitch_10f
    const-string v3, "ATTACH"

    goto :goto_126

    .line 109
    :pswitch_112
    const-string v3, "DETACH"

    goto :goto_126

    .line 108
    :pswitch_115
    const-string v3, "SHOW"

    goto :goto_126

    .line 107
    :pswitch_118
    const-string v3, "HIDE"

    goto :goto_126

    .line 106
    :pswitch_11b
    const-string v3, "REMOVE"

    goto :goto_126

    .line 105
    :pswitch_11e
    const-string v3, "REPLACE"

    goto :goto_126

    .line 104
    :pswitch_121
    const-string v3, "ADD"

    goto :goto_126

    .line 103
    :pswitch_124
    const-string v3, "NULL"

    .line 116
    :goto_126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_193

    .line 120
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v3, :cond_14d

    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v3, :cond_16c

    .line 121
    :cond_14d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :cond_16c
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v3, :cond_174

    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v3, :cond_193

    .line 127
    :cond_174
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_193
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e3

    :cond_197
    return-void

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_124
        :pswitch_121
        :pswitch_11e
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_106
    .end packed-switch
.end method

.method executeOps()V
    .registers 11

    .line 402
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_e7

    .line 404
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 405
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_26

    .line 407
    invoke-virtual {v5, v1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 408
    iget v6, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 409
    iget-object v6, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 411
    :cond_26
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v6, :pswitch_data_f8

    .line 449
    :pswitch_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_44
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_d0

    .line 443
    :pswitch_4d
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_d0

    .line 440
    :pswitch_55
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_d0

    .line 435
    :pswitch_5c
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 436
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 437
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d0

    .line 431
    :pswitch_72
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 432
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d0

    .line 426
    :pswitch_83
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 427
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 428
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d0

    .line 422
    :pswitch_99
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 423
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d0

    .line 418
    :pswitch_aa
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 419
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d0

    .line 413
    :pswitch_bb
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 414
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 415
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    .line 451
    :goto_d0
    iget-boolean v6, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v6, :cond_e3

    iget v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v4, v3, :cond_e3

    if-eqz v5, :cond_e3

    .line 452
    sget-boolean v3, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v3, :cond_e3

    .line 453
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 457
    :cond_e7
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v0, :cond_f6

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v0, :cond_f6

    .line 459
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v1, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_f6
    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_2b
        :pswitch_aa
        :pswitch_99
        :pswitch_83
        :pswitch_72
        :pswitch_5c
        :pswitch_55
        :pswitch_4d
        :pswitch_44
    .end packed-switch
.end method

.method executePopOps(Z)V
    .registers 10

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_eb

    .line 472
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 473
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_29

    .line 475
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 476
    iget v4, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 478
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 480
    :cond_29
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v4, :pswitch_data_fe

    .line 518
    :pswitch_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :pswitch_47
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_d3

    .line 512
    :pswitch_50
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_d3

    .line 509
    :pswitch_57
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_d3

    .line 504
    :pswitch_5f
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 505
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 506
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d3

    .line 500
    :pswitch_75
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 501
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d3

    .line 495
    :pswitch_86
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 496
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 497
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d3

    .line 491
    :pswitch_9c
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 492
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_d3

    .line 487
    :pswitch_ad
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 488
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    goto :goto_d3

    .line 482
    :pswitch_be
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 483
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 484
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 520
    :goto_d3
    iget-boolean v4, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v4, :cond_e7

    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_e7

    if-eqz v3, :cond_e7

    .line 521
    sget-boolean v2, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez v2, :cond_e7

    .line 522
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_e7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 526
    :cond_eb
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v0, :cond_fc

    if-eqz p1, :cond_fc

    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-nez p1, :cond_fc

    .line 527
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v0, p1, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    :cond_fc
    return-void

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_be
        :pswitch_2e
        :pswitch_ad
        :pswitch_9c
        :pswitch_86
        :pswitch_75
        :pswitch_5f
        :pswitch_57
        :pswitch_50
        :pswitch_47
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 555
    :goto_7
    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ba

    .line 556
    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 557
    iget v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v8, :cond_58

    if-eq v6, v10, :cond_41

    const/4 v8, 0x6

    if-eq v6, v8, :cond_41

    const/4 v8, 0x7

    if-eq v6, v8, :cond_b2

    const/16 v8, 0x8

    if-eq v6, v8, :cond_31

    goto/16 :goto_b7

    .line 612
    :cond_31
    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v8, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v8, v11, v3}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 615
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_b7

    .line 564
    :cond_41
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne v5, v3, :cond_b7

    .line 566
    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v6, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v6, v11, v5}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    goto :goto_b7

    .line 573
    :cond_58
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 574
    iget v8, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 576
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    const/4 v13, 0x0

    :goto_62
    if-ltz v12, :cond_a2

    .line 577
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    .line 578
    iget v15, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v15, v8, :cond_9f

    if-ne v14, v6, :cond_72

    move v13, v7

    goto :goto_9f

    :cond_72
    if-ne v14, v3, :cond_81

    .line 585
    iget-object v3, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v15, v11, v14}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    .line 589
    :cond_81
    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v15, v10, v14}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 590
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 591
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 592
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 593
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 594
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v7

    :cond_9f
    :goto_9f
    add-int/lit8 v12, v12, -0x1

    goto :goto_62

    :cond_a2
    if-eqz v13, :cond_ac

    .line 601
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_b7

    .line 604
    :cond_ac
    iput v7, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 605
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 560
    :cond_b2
    iget-object v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b7
    :goto_b7
    add-int/2addr v4, v7

    goto/16 :goto_7

    :cond_ba
    return-object v3
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 345
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1d
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-eqz p1, :cond_2e

    .line 352
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    :cond_2e
    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method interactsWith(I)Z
    .registers 6

    .line 358
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 360
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 361
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_19

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    if-eqz v3, :cond_20

    if-ne v3, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    return v0

    .line 373
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v0

    :goto_c
    if-ge v3, v1, :cond_52

    .line 376
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 377
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1d

    iget v4, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1e

    :cond_1d
    move v4, v0

    :goto_1e
    if-eqz v4, :cond_4f

    if-eq v4, v2, :cond_4f

    move v2, p2

    :goto_23
    if-ge v2, p3, :cond_4e

    .line 381
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    .line 382
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_32
    if-ge v7, v6, :cond_4b

    .line 384
    iget-object v8, v5, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 385
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_43

    .line 386
    iget v8, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_44

    :cond_43
    move v8, v0

    :goto_44
    if-ne v8, v4, :cond_48

    const/4 p1, 0x1

    return p1

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4e
    move v2, v4

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_52
    return v0
.end method

.method isPostponed()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 660
    :goto_2
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 661
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 662
    invoke-static {v2}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 5

    .line 190
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_9

    goto :goto_29

    .line 191
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public runOnCommitRunnables()V
    .registers 3

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 285
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 286
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_1e
    return-void
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 670
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 671
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 672
    invoke-static {v1}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 673
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_25

    .line 46
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 50
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_35

    .line 635
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 636
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v3, v1, :cond_2d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    packed-switch v3, :pswitch_data_36

    goto :goto_32

    .line 652
    :pswitch_1d
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_32

    .line 646
    :pswitch_22
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_32

    :pswitch_25
    const/4 p2, 0x0

    goto :goto_32

    .line 643
    :cond_27
    :pswitch_27
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 639
    :cond_2d
    :pswitch_2d
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_35
    return-object p2

    :pswitch_data_36
    .packed-switch 0x6
        :pswitch_27
        :pswitch_2d
        :pswitch_25
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method
