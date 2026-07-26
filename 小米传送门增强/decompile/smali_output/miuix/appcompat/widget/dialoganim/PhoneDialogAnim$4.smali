.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field final synthetic val$isLandscape:Z

.field final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iput-boolean p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$isLandscape:Z

    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    .line 233
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 234
    iget-object v2, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # invokes: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getContentViewMargins(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v2, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$200(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 235
    iget-object v3, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mIsDebugMode:Z
    invoke-static {v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange: contentView.height <= 0, contentViewMargins: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneDialogAnim"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    sub-int v3, p5, p3

    .line 238
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 240
    # invokes: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;IZ)V
    invoke-static {p1, v2, v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$400(Landroid/view/View;IZ)V

    .line 241
    iget-object v3, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget-boolean v4, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$isLandscape:Z

    iget-object v5, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    iget-object v6, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$4;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v7, 0x0

    move-object p2, v3

    move-object p3, p1

    move p4, v2

    move p5, v7

    move p6, v4

    move-object p7, v5

    move-object/from16 p8, v6

    # invokes: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->doExecuteShowAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    invoke-static/range {p2 .. p8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$500(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
