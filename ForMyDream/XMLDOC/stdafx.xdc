<?xml version="1.0"?><doc>
<members>
<member name="T:CBaseTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="27">
<summary>
Represents a basic transition.
</summary>
<remarks>
This class encapsulates IUIAnimationTransition interface and serves as a base class for all transitions.
</remarks>
</member>
<member name="T:CBaseTransition.TRANSITION_TYPE" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="37">
<summary>
Defines the transition types currently supported by the MFC implementation of Windows Animation API.
</summary>
<remarks>
A transition type is set in the constructor of specific transition.
For example, CSinusoidalTransitionFromRange sets its type to SINUSOIDAL_FROM_RANGE.
</remarks>
</member>
<member name="M:CBaseTransition.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="62">
<summary>
Constructs a base transtion object.
</summary>
</member>
<member name="M:CBaseTransition.Dispose" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="70">
<summary>
The destructor. Called when a transition object is being destroyed.
</summary>
</member>
<member name="M:CBaseTransition.Clear" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="77">
<summary>
Releases encapsulated IUIAnimationTransition COM object.
</summary>
<remarks>
This method should be called from a derived class's Create method in order to prevent
IUITransition interface leak.
</remarks>
</member>
<member name="M:CBaseTransition.GetType" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="92">
<summary>
Returns transition type.
</summary>
<returns>
One of TRANSITION_TYPE enumerated values.
</returns>
<remarks>
This method can be used to identify a transition object by its type.
The type is set in a constructor in a derived class.
</remarks>
</member>
<member name="M:CBaseTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="104">
<summary>
Creates a COM transition.
</summary>
<returns>
TRUE if a transition COM object was created successfully; otherwise FALSE.
</returns>
<remarks>
This is a pure virtual function that must be overridden in a derived class.
It's called by the framework to instantiate the underlying COM transition object.
</remarks>
<param name="pLibrary">A pointer to transition library, which creates standard transitions. It can be NULL for custom transitions.</param>
<param name="pFactory">A pointer to transition factory, which creates custom transitions. It can be NULL for standard transitions.</param>
</member>
<member name="M:CBaseTransition.GetTransition(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="118">
<summary>
Returns a pointer to underlying COM transition object.
</summary>
<returns>
A valid pointer to IUIAnimationTransition or NULL if underlying transition can't be created.
</returns>
<remarks>
This method returns a pointer to underlying COM transition object and creates it if necessary.
</remarks>
<param name="pLibrary">A pointer to transition library, which creates standard transitions. It can be NULL for custom transitions.</param>
<param name="pFactory">A pointer to transition factory, which creates custom transitions. It can be NULL for standard transitions.</param>
</member>
<member name="M:CBaseTransition.GetTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="131">
<summary>
Returns a pointer to underlying COM transition object.
</summary>
<returns>
A valid pointer to IUIAnimationTransition or NULL if underlying transition can't be created.
</returns>
<remarks>
It's an accessor method to underlying COM transition object. It doesn't instantiates the underlying IUIAnimationTransition COM
object if it wasn't created.
</remarks>
</member>
<member name="M:CBaseTransition.SetKeyframes(CBaseKeyFrame*,CBaseKeyFrame*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="146">
<summary>
Sets keyframes for a transition.
</summary>
<remarks>
This method tells the transition to start after specified keyframe and, optionally, if pEnd is not NULL, end
before the specified keyframe.
If the transition was created with a duration parameter specified, that duration is overwritten with the duration of time between the start and end keyframes.
</remarks>
<param name="pStart">A keyframe that specifies the beginning of the transition. </param>
<param name="pEnd">A keyframe that specifies the end of the transition.</param>
</member>
<member name="M:CBaseTransition.IsAdded" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="162">
<summary>
Tells whether a transition has been added to a storyboard.
</summary>
<returns>
Returns TRUE if a transition has been added to a storyboard, otherwise FALSE.
</returns>
<remarks>
This flag is set internally when the top level code adds transitions to storyboard.
</remarks>
</member>
<member name="M:CBaseTransition.GetStartKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="173">
<summary>
Returns start keyframe.
</summary>
<returns>
A valid pointer to a keyframe, or NULL if a transition should not start after a keyframe.
</returns>
<remarks>
This method can be used to access a keyframe object that was previously set by SetKeyframes.
It's called by top level code when transitions are being added to storyboard.
</remarks>
</member>
<member name="M:CBaseTransition.GetEndKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="185">
<summary>
Returns start keyframe.
</summary>
<returns>
A valid pointer to a keyframe, or NULL if a transition should not be inserted between keyframes.
</returns>
<remarks>
This method can be used to access a keyframe object that was previously set by SetKeyframes.
It's called by top level code when transitions are being added to storyboard.
</remarks>
</member>
<member name="M:CBaseTransition.SetRelatedVariable(CAnimationVariable*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="197">
<summary>
Establishes a relationship between animation variable and transition.
</summary>
<remarks>
Establishes a relationship between animation variable and transition. A transition can be applied only to one variable.
</remarks>
<param name="pVariable">A pointer to related animation variable.</param>
</member>
<member name="M:CBaseTransition.GetRelatedVariable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="209">
<summary>
Returns a pointer to related variable.
</summary>
<returns>
A valid pointer to animation variable, or NULL if an animation variable has not been set by SetRelatedVariable.
</returns>
<remarks>
This is an accessor to related animation variable.
</remarks>
</member>
<member name="M:CBaseTransition.AddToStoryboard(IUIAnimationStoryboard*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="220">
<summary>
Adds a transition to a storyboard.
</summary>
<returns>
TRUE, if transition was successfully added to a storyboard.
</returns>
<remarks>
Applies the transition to the related variable in the storyboard.  If this is the first transition
applied to this variable in this storyboard, the transition begins at the start of the storyboard.
Otherwise, the transition is appended to the transition added most recently to the variable.
</remarks>
<param name="pStoryboard">A pointer to storyboard, which will animate the related variable.</param>
</member>
<member name="M:CBaseTransition.AddToStoryboardAtKeyframes(IUIAnimationStoryboard*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="234">
<summary>
Adds a transition to a storyboard.
</summary>
<returns>
TRUE, if transition was successfully added to a storyboard.
</returns>
<remarks>
Applies the transition to the related variable in the storyboard. If the start keyframe was specified, the transition
begins at that keyframe. If the end keyframe was specified, the transition begins at the start keyframe and
and stops at the end keyframe. If the transition was created with a duration parameter specified, that duration is
overwritten with the duration of time between the start and end keyframes.
If no keyframe was specified, the transition is appended to the transition added most recently to the variable.
</remarks>
<param name="pStoryboard">A pointer to storyboard, which will animate the related variable.</param>
</member>
<member name="F:CBaseTransition.m_type" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="251">
<summary>
Stores the transition type.
</summary>
</member>
<member name="F:CBaseTransition.m_transition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="256">
<summary>
Stores a pointer to IUIAnimationTransition. NULL if a COM transition object has not been created.
</summary>
</member>
<member name="F:CBaseTransition.m_pStartKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="261">
<summary>
Stores a pointer to the keyframe that specifies the beginning of the transition.
</summary>
</member>
<member name="F:CBaseTransition.m_pEndKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="266">
<summary>
Stores a pointer to the keyframe that specifies the end of the transition.
</summary>
</member>
<member name="F:CBaseTransition.m_pRelatedVariable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="271">
<summary>
A pointer to an animation variable, which is animated with the transition stored in m_transition.
</summary>
</member>
<member name="F:CBaseTransition.m_bAdded" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="276">
<summary>
Specifies whether a transition has been added to a storyboard.
</summary>
</member>
<member name="T:CBaseKeyFrame" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="282">
<summary>
Implements basic functionality of keyframe.
</summary>
<remarks>
Encapsulates UI_ANIMATION_KEYFRAME variable. Serves as a base class for any keyframe implementation.
A keyframe represents a moment in time within a storyboard and can be used to specify the start and end times of transitions.
There are two types of keyframes - keyframes added to storyboard at the specified offset (in time), or keyframes added
after specified transition. Because durations of some transitions can't be known before animation starts, the actual values
of some keyframes are determined at runtime only.
Because keyframes may depend on transitions, which in their turn depend on keyframes, it's important to prevent
infinite recursions when building keyframe chains.
</remarks>
</member>
<member name="F:CBaseKeyFrame.m_keyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="299">
<summary>
Represents a Windows Animation API keyframe. When a keyframe is not initialized
it is set to the predefined value UI_ANIMATION_KEYFRAME_STORYBOARD_START.
</summary>
</member>
<member name="F:CBaseKeyFrame.m_bAdded" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="305">
<summary>
Specifies whether this keyframe has been added to a storyboard.
</summary>
</member>
<member name="F:CBaseKeyFrame.m_bIsKeyframeAtOffset" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="310">
<summary>
Specifies whether this keyframe should be added to storyboard at an offset from
another existing keyframe, or at the end of some transition.
</summary>
</member>
<member name="M:CBaseKeyFrame.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="316">
<summary>
Constructs a keyframe object.
</summary>
</member>
<member name="M:CBaseKeyFrame.GetAnimationKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="325">
<summary>
Returns the underlying keyframe value.
</summary>
<returns>
A current keyframe. The default value is UI_ANIMATION_KEYFRAME_STORYBOARD_START.
</returns>
<remarks>
This is an accessor to the underlying keyframe value.
</remarks>
</member>
<member name="M:CBaseKeyFrame.IsAdded" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="336">
<summary>
Tells whether a keyframe has been added to storyboard.
</summary>
<returns>
TRUE if a keyframe is added to a storyboard; otehrwise FALSE.
</returns>
<remarks>
In the base class IsAdded always returns TRUE, but it's overridden in derived classes.
</remarks>
</member>
<member name="M:CBaseKeyFrame.IsKeyframeAtOffset" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="347">
<summary>
Specifies whether the keyframe should be added to storyboard at offset, or after transition.
</summary>
<returns>
TRUE if the keyframe should be added to storyboard at some specified offset.
FALSE if the keyframe should be added to storyboard after some transition.
</returns>
<remarks>
Specifies whether the keyframe should be added to storyboard at offset.
The offset or transition must be specified in a derived class.
</remarks>
</member>
<member name="M:CBaseKeyFrame.AddToStoryboard(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="360">
<summary>
Adds a keyframe to storyboard.
</summary>
<returns>
TRUE if keyframe was added to storyboard successfully; otherwise FALSE.
</returns>
<remarks>
This method is called to add a keyframe to storyboard.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
<param name="bDeepAdd">If this parameter is TRUE and the keyframe being added depends on some other keyframe or transition, this method tries
to add this keyframe or transition to storyboard first.</param>
</member>
<member name="T:CKeyFrame" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="375">
<summary>
Represents an animation keyframe.
</summary>
<remarks>
This class implements an animation keyframe. A keyframe represents a moment in time within a
storyboard and can be used to specify the start and end times of transitions.
A keyframe may be based on other keyframe and have an offset (in seconds) from it, or may be based on a transition and
represent a moment in time when this transition ends.
</remarks>
</member>
<member name="F:CKeyFrame.m_pTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="389">
<summary>
Stores a pointer to transtion that begins at this keyframe.
</summary>
</member>
<member name="F:CKeyFrame.m_offset" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="394">
<summary>
Specifies offset of this keyframe from a keyframe stored in m_pExistingKeyFrame.
</summary>
</member>
<member name="F:CKeyFrame.m_pExistingKeyFrame" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="399">
<summary>
Stores a pointer to an existing keframe. This keyframe is added to storyboard with m_offset to the existing keyframe.
</summary>
</member>
<member name="M:CKeyFrame.#ctor(CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="405">
<summary>
Constructs a keyframe that depends on a transition.
</summary>
<remarks>
The constructed keyframe will represent a moment in time within a storyboard when the specified transition ends.
</remarks>
<param name="pTransition">A pointer to a transition.</param>
</member>
<member name="M:CKeyFrame.#ctor(CBaseKeyFrame*,System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="414">
<summary>
Constructs a keyframe that depends on other keyframe.
</summary>
<remarks>
The constructed keyframe will represent a moment in time within a storyboard, which has a specified offset from pKeyframe.
</remarks>
<param name="pKeyframe">A pointer to keyframe.</param>
<param name="offset">Offset, in seconds, from keyframe specified by pKeyframe.</param>
</member>
<member name="M:CKeyFrame.GetTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="424">
<summary>
Returns a pointer to a transition this keyframe depends on.
</summary>
<returns>
A valid pointer to transition, or NULL if this keyframe does not depend on transition.
</returns>
<remarks>
This is an accessor to a transition this keyframe depends on.
</remarks>
</member>
<member name="M:CKeyFrame.GetExistingKeyframe" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="435">
<summary>
Returns a pointer to a keyframe this keyframe depends on.
</summary>
<returns>
A valid pointer to keyframe, or NULL if this keyframe does not depend on other keyframe.
</returns>
<remarks>
This is an accessor to a keyframe this keyframe depends on.
</remarks>
</member>
<member name="M:CKeyFrame.GetOffset" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="446">
<summary>
Returns an offset from other keyframe.
</summary>
<returns>
An offset in seconds from other keyframe.
</returns>
<remarks>
This method should be called to determine an offset in seconds from other keyframe.
</remarks>
</member>
<member name="M:CKeyFrame.AddToStoryboard(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="457">
<summary>
Adds a keyframe to a storyboard.
</summary>
<returns>
TRUE, if keyframe was added successfully.
</returns>
<remarks>
This method adds a keyframe to storyboard. If it depends on other keyframe or transition and bDeepAdd is TRUE,
this method tries to add them recursively.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
<param name="bDeepAdd">Specifies whether to add keyframe or transition recursively.</param>
</member>
<member name="M:CKeyFrame.AddToStoryboardAfterTransition(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="471">
<summary>
Adds a keyframe to storyboard after transition.
</summary>
<returns>
TRUE, if keyframe was added successfully.
</returns>
<remarks>
This function is called by the framework to add a keyframe to storyboard after transition.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
<param name="bDeepAdd">Specifies whether to add a transition recursively.</param>
</member>
<member name="M:CKeyFrame.AddToStoryboardAtOffset(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="484">
<summary>
Adds a keyframe to storyboard at offset.
</summary>
<returns>
TRUE, if keyframe was added successfully.
</returns>
<remarks>
This function is called by the framework to add a keyframe to storyboard at offset.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
<param name="bDeepAdd">Specifies whether to add a keyframe this keyframe depend on recursively.</param>
</member>
<member name="T:CAnimationVariable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="501">
<summary>
Represents an animation variable.
</summary>
<remarks>
The CAnimationVariable class encapsulates IUIAnimationVariable COM object. It also holds a list of transitions
to be applied to the animation variable in a storyboard. CAnimationVariable objects are embedded to
animation objects, which can represent in an application an animated value, point, size, color and rectangle.
</remarks>
</member>
<member name="F:CAnimationVariable.m_variable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="513">
<summary>
Stores a pointer to IUIAnimationVariable COM object. NULL if the COM object has not been created yet, or if creation failed.
</summary>
</member>
<member name="F:CAnimationVariable.m_dblDefaultValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="518">
<summary>
Specifies the default value, which is propagated to IUIAnimationVariable.
</summary>
</member>
<member name="F:CAnimationVariable.m_lstTransitions" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="523">
<summary>
Contains a list of transitions that animate this animation variable.
</summary>
</member>
<member name="F:CAnimationVariable.m_pParentObject" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="528">
<summary>
A pointer to an animation object that encapsulates this animation variable.
</summary>
</member>
<member name="M:CAnimationVariable.SetParentAnimationObject(CAnimationBaseObject*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="534">
<summary>
Sets the relationship between an animation variable and an animation object.
</summary>
<remarks>
This method is called internally to establish one-to-one relationship between an animation variable and an animation object that encapsulates it.
</remarks>
<param name="pParentObject">A pointer to an animation object that contains this variable.</param>
</member>
<member name="M:CAnimationVariable.#ctor(System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="544">
<summary>
Constructs an animation variable object.
</summary>
<remarks>
Constructs an animation variable object and sets its default value. A default value is used when
a variable is not animated, or can't be animated.
</remarks>
<param name="dblDefaultValue">Specifies the default value.</param>
</member>
<member name="M:CAnimationVariable.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="554">
<summary>
The destructor. Called when a CAnimationVariable object is being destroyed.
</summary>
</member>
<member name="M:CAnimationVariable.GetParentAnimationObject" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="559">
<summary>
Returns the parent animation object.
</summary>
<returns>
A pointer to parent animation object, if relationship was established, otherwise NULL.
</returns>
<remarks>
This method can be called to retrieve a pointer to a parent animation object (a container).
</remarks>
</member>
<member name="M:CAnimationVariable.GetVariable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="570">
<summary>
Returns a pointer to IUIAnimationVariable COM object.
</summary>
<returns>
A valid pointer to IUIAnimationVariable COM object, or NULL if animation variable was not created, or can't be created.
</returns>
<remarks>
Use this function to access the underlying IUIAnimationVariable COM object and call its methods directly if needed.
</remarks>
</member>
<member name="M:CAnimationVariable.SetDefaultValue(System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="581">
<summary>
Sets default value and releases IUIAnimationVariable COM object.
</summary>
<remarks>
Use this method to reset the default value. This method releases the internal IUIAnimationVariable COM object,
therefore when animation variable is recreated, the underlying COM object gets the new default value.
The default value is returned by GetValue if the COM object representing the animation variable is not created,
or if the variable has not been animated.
</remarks>
<param name="dblDefaultValue">Specifies the new default value.</param>
</member>
<member name="M:CAnimationVariable.Create(IUIAnimationManager*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="593">
<summary>
Creates the underlying animation variable COM object.
</summary>
<returns>
TRUE if the animation variable was successfully created; otherwise FALSE.
</returns>
<remarks>
This method creates the underlying animation variable COM object and sets its default value.
</remarks>
<param name="pManager">A pointer to animation manager.</param>
</member>
<member name="M:CAnimationVariable.CreateTransitions(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="605">
<summary>
Creates all transitions to be applied to this animation variable.
</summary>
<returns>
TRUE if transitions were created successfully; otherwise FALSE.
</returns>
<remarks>
This method is called by the framework when it needs to create transitions that have been added
to the variable's internal list of transitions.
</remarks>
<param name="pLibrary">A pointer to transition library.</param>
<param name="pFactory">A pointer to transition factory.</param>
</member>
<member name="M:CAnimationVariable.GetValue(System.Double*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="619">
<summary>
Returns the current value of animation variable.
</summary>
<returns>
S_OK if the value was obtained successfully, or underlying animation variable has not been created. Otherwise
HRESULT error code.
</returns>
<remarks>
This method can be called to retrieve the current value of animation variable. If the underlying COM object
has not been created, dblValue will contain a default value, when the function returns.
</remarks>
<param name="dblValue">The current value of the animation variable.</param>
</member>
<member name="M:CAnimationVariable.GetValue(System.Int32*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="633">
<summary>
Returns the current value of animation variable.
</summary>
<returns>
S_OK if the value was obtained successfully, or underlying animation variable has not been created. Otherwise
HRESULT error code.
</returns>
<remarks>
This method can be called to retrieve the current value of animation variable. If the underlying COM object
has not been created, dblValue will contain a default value, when the function returns.
</remarks>
<param name="nValue">The current value of the animation variable.</param>
</member>
<member name="M:CAnimationVariable.AddTransition(CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="647">
<summary>
Adds a transition.
</summary>
<remarks>
This method is called to add a transition to the internal list of transitions to be applied to the animation variable.
This list should be cleared when an animation has been scheduled.
</remarks>
<param name="pTransition">A pointer to a transition to add.</param>
</member>
<member name="M:CAnimationVariable.ClearTransitions(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="657">
<summary>
Clears transitions.
</summary>
<remarks>
This method removes all transitions from the internal list of transitions. If bAutodestroy is TRUE, or
m_bAutodestroyTransitions is TRUE, then transitions are deleted. Otherwise the caller should deallocate
the transition objects.
</remarks>
<param name="bAutodestroy">Specifies whether this method should delete transition objects.</param>
</member>
<member name="M:CAnimationVariable.ApplyTransitions(CAnimationController*,IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="668">
<summary>
Adds transitions from the internal list to storyboard.
</summary>
<remarks>
This method adds transitions from the internal list to storyboard. It's called from the
top level code several times to add transitions that do not depend on keyframes and add
transitions that depend on keyframes. If the underlying animation variable
COM object has not been created, this method creates it at this stage.
</remarks>
<param name="pController">A pointer to parent animation controller.</param>
<param name="pStoryboard">A pointer to storyboard.</param>
<param name="bDependOnKeyframes">TRUE, if this method should add transitions that depend on keyframes.</param>
</member>
<member name="M:CAnimationVariable.EnableValueChangedEvent(CAnimationController*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="682">
<summary>
Enables or disables the ValueChanged event.
</summary>
<remarks>
When ValueChanged event is enabled, the framework calls virtual method CAnimationController::OnAnimationValueChanged.
You need to override it in a class derived from CAnimationController in order to process this event. This method is called every time
the value of animation variable is changed.
</remarks>
<param name="pController">A pointer to parent controller.</param>
<param name="bEnable">TRUE - enable event, FALSE - disable event.</param>
</member>
<member name="M:CAnimationVariable.EnableIntegerValueChangedEvent(CAnimationController*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="694">
<summary>
Enables or disables the IntegerValueChanged event.
</summary>
<remarks>
When ValueChanged event is enabled, the framework calls virtual method CAnimationController::OnAnimationIntegerValueChanged.
You need to override it in a class derived from CAnimationController in order to process this event. This method is called every time
the integer value of animation variable is changed.
</remarks>
<param name="pController">A pointer to parent controller.</param>
<param name="bEnable">TRUE - enable event, FALSE - disable event.</param>
</member>
<member name="M:CAnimationVariable.GetDefaultValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="706">
<summary>
Returns default value.
</summary>
<returns>
The default value.
</returns>
<remarks>
Use this function to obtain default value of animation variable. The default value can be set in constructor or by
SetDefaultValue method.
</remarks>
</member>
<member name="F:CAnimationVariable.m_bAutodestroyTransitions" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="719">
<summary>
Specifies whether related transition objects should be deleted.
</summary>
<remarks>
Set this value to TRUE to force deletion of transition objects when they are being removed from the internal list
of transitions. If this value is FALSE the transitions should be deleted by calling application.
The list of transitions is always cleared after an animation has been scheduled. The default value is FALSE.
</remarks>
</member>
<member name="T:CAnimationBaseObject" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="730">
<summary>
The base class for all animation objects.
</summary>
<remarks>
This class implements basic methods for all animation objects. An animation object can represent a value, point,
size, rectangle or color in an application, as well as any custom entity. Animation objects are stored in animation groups
(see CAnimationGroup). Each group can be animated separately and can be treated as an analogue of storyboard.
An animation object encapsulates one or more animation variables (see CAnimationVariable), depending on its logical
representation. For example, CAnimationRect contains four animation variables - one variable for each side of rectangle.
Each animation object class exposes overloaded AddTransition method, which should be used to apply transitions to
encapsulated animation variables.
An animation object can be identified by Object ID (optionally) and by Group ID. A Group ID is necessary in order
to place an animation object to correct group, but if a Group ID is not specified, an object is placed in the default group with ID 0.
If you call SetID with different GroupID, an animation object will be moved to another group (a new group is created if necessary).
</remarks>
</member>
<member name="F:CAnimationBaseObject.m_nGroupID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="751">
<summary>
Specifies the Group ID of the animation object.
</summary>
</member>
<member name="F:CAnimationBaseObject.m_nObjectID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="756">
<summary>
Specifes the Object ID of the animation object.
</summary>
</member>
<member name="F:CAnimationBaseObject.m_dwUserData" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="761">
<summary>
Stores user-defined data.
</summary>
</member>
<member name="F:CAnimationBaseObject.m_bAutodestroyTransitions" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="766">
<summary>
Specifies whether related transitions should be automatically destroyed.
</summary>
</member>
<member name="F:CAnimationBaseObject.m_pParentController" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="771">
<summary>
A pointer to the parent animation controller.
</summary>
</member>
<member name="M:CAnimationBaseObject.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="777">
<summary>
Constructs an animation object.
</summary>
<remarks>
Constructs an animation objects and assigns default Object ID (0) and Group ID (0).
</remarks>
</member>
<member name="M:CAnimationBaseObject.#ctor(System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="785">
<summary>
Constructs an animation object.
</summary>
<remarks>
Constructs an animation object with specified Object ID and Group ID.
</remarks>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">User-defined data, which can be associated with animation object and retrieved later at runtime.</param>
</member>
<member name="M:CAnimationBaseObject.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="796">
<summary>
The destructor. Called when an animation object is being destroyed.
</summary>
</member>
<member name="M:CAnimationBaseObject.CreateTransitions" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="801">
<summary>
Creates transitions associated with an animation object.
</summary>
<returns>
TRUE if transitions were created successfully; otherwise FALSE.
</returns>
<remarks>
Loops over list of animation variables encapsulated in a derived animation object and creates transitions
associated with each animation variable.
</remarks>
</member>
<member name="M:CAnimationBaseObject.SetID(System.UInt32,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="813">
<summary>
Sets new IDs.
</summary>
<remarks>
Allows to change Object ID and Group ID. If the new Group ID differs from the current ID, an animation object
is moved to another group (a new group will be created, if necessary).
</remarks>
<param name="nObjectID">Specifies new Object ID.</param>
<param name="nGroupID">Specifies new Group ID.</param>
</member>
<member name="M:CAnimationBaseObject.SetUserData(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="824">
<summary>
Sets user-defined data.
</summary>
<remarks>
Use this method to associate a custom data with an animation object. This data may be retrieved later at runtime by GetUserData.
</remarks>
<param name="dwUserData">Specifies the custom data.</param>
</member>
<member name="M:CAnimationBaseObject.DetachFromController" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="836">
<summary>
Detaches an animation object from parent animation controller.
</summary>
<remarks>
This method is used internally.
</remarks>
</member>
<member name="M:CAnimationBaseObject.GetObjectID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="847">
<summary>
Returns current Object ID.
</summary>
<returns>
Current Object ID.
</returns>
<remarks>
Use this method to retrieve Object ID. It's 0 if Object ID has not been set explicitly in constructor or with SetID.
</remarks>
</member>
<member name="M:CAnimationBaseObject.GetGroupID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="858">
<summary>
Returns current Group ID.
</summary>
<returns>
Current Group ID.
</returns>
<remarks>
Use this method to retrieve Group ID. It's 0 if Group ID has not been set explicitly in constructor or with SetID.
</remarks>
</member>
<member name="M:CAnimationBaseObject.GetUserData" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="869">
<summary>
Returns user defined data.
</summary>
<returns>
A value of custom data.
</returns>
<remarks>
Call this method to retrieve the custom data at runtime. The returned value will be 0 if it was not explicitly initialized in constructor or with SetUserData.
</remarks>
</member>
<member name="M:CAnimationBaseObject.SetAutodestroyTransitions(System.Int32)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="880">
<summary>
Sets a flag that orders to automatically destroy transitions.
</summary>
<remarks>
Set this flag only if you allocated transition objects using operator new. If for some reason transition
objects are allocated on the stack, the auto destroy flag should be FALSE. By default this flag is TRUE.
</remarks>
<param name="bValue">Specifies the auto destroy flag.</param>
</member>
<member name="M:CAnimationBaseObject.GetAutodestroyTransitions" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="893">
<summary>
Tells whether related transition are destroyed automatically.
</summary>
<returns>
If TRUE, related transitions are destroyed automatically; if FALSE, transition objects should be deallocated by calling application.
</returns>
<remarks>
By default this flag is TRUE. Set this flag only if you allocated transition on the stack and/or transitions should be deallocated by
the calling application.
</remarks>
</member>
<member name="M:CAnimationBaseObject.ApplyTransitions(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="908">
<summary>
Adds transitions to storyboard with encapsulated animation variable.
</summary>
<returns>
TRUE if transitions were added successfully.
</returns>
<remarks>
Adds related transitions, that have been added with AddTransition (overloaded methods in derived classes), to storyboard.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
<param name="bDependOnKeyframes">With FALSE this method adds only those transitions that do not depend on keyframes.</param>
</member>
<member name="M:CAnimationBaseObject.ClearTransitions(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="921">
<summary>
Removes all related transitions.
</summary>
<remarks>
Removes all related transitions and destroys them if bAutodestroy or m_bAutodestroyTransitions flag is TRUE.
Transitions should be destroyed automatically only if they are not allocated on the stack.
If the above flags are FALSE, transitions are just removed from the internal list of related transitions.
</remarks>
<param name="bAutodestroy">Specifies whether to destroy transition objects automatically, or just remove them from the related list.</param>
</member>
<member name="M:CAnimationBaseObject.EnableValueChangedEvent(CAnimationController*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="932">
<summary>
Sets up Value Changed event handler.
</summary>
<remarks>
If the Value Changed event handler is enabled, you can handle this event in CAnimationController::OnAnimationValueChanged method,
which should be overridden in a CAnimationController-derived class. This method is called every time the animation value has changed.
</remarks>
<param name="pController">A pointer to a parent controller.</param>
<param name="bEnable">Specifies whether to enable, or disable Value Changed event.</param>
</member>
<member name="M:CAnimationBaseObject.EnableIntegerValueChangedEvent(CAnimationController*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="943">
<summary>
Sets up Integer Value Changed event handler.
</summary>
<remarks>
If the Integer Value Changed event handler is enabled, you can handle this event in CAnimationController::OnAnimationIntegerValueChanged method,
which should be overridden in a CAnimationController-derived class. This method is called every time the animation integer value has changed.
</remarks>
<param name="pController">A pointer to a parent controller.</param>
<param name="bEnable">Specifies whether to enable, or disable Integer Value Changed event.</param>
</member>
<member name="M:CAnimationBaseObject.ContainsVariable(IUIAnimationVariable*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="954">
<summary>
Determines whether an animation object contains a particular animation variable.
</summary>
<returns>
TRUE if the animation variable is contained in the animation object; otherwise FALSE.
</returns>
<remarks>
This method can be used to determine whether an animation variable specified by pVariable is contained
within an animation object. An animation object, depending on its type, may contain several animation variables.
For example, CAnimationColor contains three variables, one for each color component (red, green and blue). When a
value of animation variable has changed, Windows Animation API sends ValueChanged or IntegerValueChanged events (if enabled),
and the parameter of this event is a pointer to interface IUIAnimationVariable of animation variable.
This method helps to obtain a pointer to animation from a pointer to contained COM object.
</remarks>
<param name="pVariable">A pointer to animation variable.</param>
</member>
<member name="M:CAnimationBaseObject.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="972">
<summary>
Collects pointers to contained animation variables.
</summary>
<remarks>
This is a pure virtual method that must be overridden in a derived class.
An animation object, depending on its type, contains one or more animation variables. For example, CAnimationPoint
contains two variables, for X and Y coordinates respectively. The base class CAnimationBaseObject implements
some generic methods, which act on a list of animation variables: ApplyTransitions, ClearTransitions,
EnableValueChangedEvent, EnableIntegerValueChangedEvent. These methods call GetAnimationVariableList, which is filled
in a derived class with actual animation variables contained in a particular animation object, then loop over the
list and perform necessary actions.
If you create a custom animation object, you must add to lst all animation variables contained in that object.
</remarks>
<param name="lst">A list that must be filled with animation variables contained in an animation object.</param>
</member>
<member name="M:CAnimationBaseObject.SetParentAnimationObjects" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="988">
<summary>
Establishes relationship between animation variables, contained in an animation object, and their container.
</summary>
<remarks>
This is a helper that can be used to establish relationship between animation variables, contained in an animation object,
and their container. It loops over animation variables and sets a back pointer to a parent animation object
to each animation variable.
In the current implementation the actual relationship is established in CAnimationBaseObject::ApplyTransitions, therefore
back pointers are not set until you call CAnimationGroup::Animate.
Knowing the relationship may be helpful when you processing events and need to get a parent animation object
from CAnimationVariable (use CAnimationVariable::GetParentAnimationObject).
</remarks>
</member>
<member name="T:CAnimationValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1003">
<summary>
Implements the functionality of animation object with one value.
</summary>
<remarks>
The CAnimationValue class encapsulates a single CAnimationVariable object and can represent in applications
a single animated value. For example, you can use this class for animated transparency (fade effect), angle (to rotate objects),
or for any other case when you need to create an animation depending on a single animated value.
To use this class in application, just instantiate an object of this class, add it to animation controller using
CAnimationController::AddAnimationObject and call AddTransition for each transition to be applied to the value.
</remarks>
</member>
<member name="F:CAnimationValue.m_value" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1017">
<summary>
The encapsulated animation variable that represents animation value.
</summary>
</member>
<member name="M:CAnimationValue.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1023">
<summary>
Constructs a CAnimationValue object.
</summary>
<remarks>
Constructs CAnimationValue object with default properties: default value, Group ID and Object ID are set to 0.
</remarks>
</member>
<member name="M:CAnimationValue.#ctor(System.Double,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1031">
<summary>
Constructs a CAnimationValue object.
</summary>
<remarks>
Constructs CAnimationValue object with specified properties.
</remarks>
<param name="dblDefaultValue">Specifies default value.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">specifies user-defined data.</param>
</member>
<member name="M:CAnimationValue.SetDefaultValue(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1043">
<summary>
Sets default value.
</summary>
<remarks>
Use this method to set a default value. A default value is returned to application when animation has not been started
and/or underlying COM object has not been created. If the underlying COM object encapsulated in CAnimationVarible
was already created, this method recreates it, therefore you might need to call EnableValueChanged/EnableIntegerValueChanged
methods again.
</remarks>
<param name="dblDefaultValue">Specifies the default value.</param>
</member>
<member name="M:CAnimationValue.GetValue(System.Double*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1058">
<summary>
Retrieves the current value.
</summary>
<returns>
TRUE if the current value was retrieved successfully; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value. This implementation calls the encapsulated COM object, and if
the call fails, this method returns the default value that was previously set in constructor or with SetDefaultValue.
</remarks>
<param name="dblValue">Output. When the function returns it contains a current value of animation variable.</param>
</member>
<member name="M:CAnimationValue.GetValue(System.Int32*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1071">
<summary>
Retrieves the current value.
</summary>
<returns>
TRUE if the current value was retrieved successfully; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value. This implementation calls the encapsulated COM object, and if
the call fails, this method returns the default value that was previously set in constructor or with SetDefaultValue.
</remarks>
<param name="nValue">Output. When the function returns it contains a current value of animation variable.</param>
</member>
<member name="M:CAnimationValue.op_Implicit~System.Double" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1084">
<summary>
Provides conversion between CAnimationValue and DOUBLE.
</summary>
<returns>
Current value of Animation Value.
</returns>
<remarks>
Provides conversion between CAnimationValue and DOUBLE. This method internally calls GetValue and doesn't check for
errors. If GetValue fails, the returned value will contain a default value previously set in constructor or with SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationValue.op_Implicit~System.Int32" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1101">
<summary>
Provides conversion between CAnimationValue and INT32.
</summary>
<returns>
Current value of Animation Value as integer.
</returns>
<remarks>
Provides conversion between CAnimationValue and INT32. This method internally calls GetValue and doesn't check for
errors. If GetValue fails, the returned value will contain a default value previously set in constructor or with SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationValue.op_Assign(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1118">
<summary>
Assigns a DOUBLE value to CAnimationValue.
</summary>
<remarks>
Assigns a DOUBLE value to CAnimationValue. This value is set as a default value for encapsulated animation variable.
If you subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="dblVal">Specifies the value to be assigned to Animation Value.</param>
</member>
<member name="M:CAnimationValue.op_Assign(System.Int32)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1131">
<summary>
Assigns an INT32 value to CAnimationValue.
</summary>
<remarks>
Assigns an INT32 value to CAnimationValue. This value is set as a default value for encapsulated animation variable.
If you subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="nVal">Specifies the value to be assigned to Animation Value.</param>
</member>
<member name="M:CAnimationValue.GetVariable" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1144">
<summary>
Provides access to encapsulated animation variable.
</summary>
<returns>
A reference to encapsulated animation variable.
</returns>
<remarks>
Use this method to access the encapsulated animation variable. From CAnimationVariable you get access
to underlying IUIAnimationVariable object, whose pointer can be NULL if animation variable has not been created.
</remarks>
</member>
<member name="M:CAnimationValue.AddTransition(CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1156">
<summary>
Adds a transition to be applied to a value.
</summary>
<remarks>
Call this function to add a transition to internal list of transitions to be applied to an animation variable.
When you add transitions, they are not applied immediately and stored in an internal list. Transitions are applied
(added to a storyboard for a particular value) when you call CAnimationController::AnimateGroup.
</remarks>
<param name="pTransition">A pointer to transition object.</param>
</member>
<member name="M:CAnimationValue.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1168">
<summary>
Puts the encapsulated animation variable into a list.
</summary>
<param name="lst">When the function returns, it contains a pointer to CAnimationVariable representing the animated value.</param>
</member>
<member name="T:CAnimationPoint" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1175">
<summary>
Implements the functionality of a point whose coordinates can be animated.
</summary>
<remarks>
The CAnimationPoint class encapsulates two CAnimationVariable objects and can represent in applications
a point. For example, you can use this class to animate a position of any object on the screen (like text string, circle, point etc).
To use this class in application, just instantiate an object of this class, add it to animation controller using
CAnimationController::AddAnimationObject and call AddTransition for each transition to be applied to X and/or Y coordinates.
</remarks>
</member>
<member name="F:CAnimationPoint.m_xValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1188">
<summary>
The encapsulated animation variable that represents X coordinate of animation point.
</summary>
</member>
<member name="F:CAnimationPoint.m_yValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1193">
<summary>
The encapsulated animation variable that represents Y coordinate of animation point.
</summary>
</member>
<member name="M:CAnimationPoint.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1199">
<summary>
Constructs CAnimationPoint object.
</summary>
<remarks>
Constructs CAnimationPoint object with default properties: default point coordinates, Group ID and Object ID are set to 0.
</remarks>
</member>
<member name="M:CAnimationPoint.#ctor(CPoint!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1207">
<summary>
Constructs CAnimationPoint object.
</summary>
<remarks>
Constructs CAnimationPoint object with specified properties.
</remarks>
<param name="ptDefault">Specifies default point coordinates.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationPoint.SetDefaultValue(tagPOINT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1219">
<summary>
Sets default value.
</summary>
<remarks>
Use this function to set a default value to animation object. This methods assigns default values to X and Y
coordinates of animation point. It also recreates underlying COM objects if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="ptDefault">Specifies the default point value.</param>
</member>
<member name="M:CAnimationPoint.GetDefaultValue" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1230">
<summary>
Returns the default values for X and Y coordinates.
</summary>
<returns>
A point containing default value.
</returns>
<remarks>
Call this function to retrieve default value, which was previously set by constructor or SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationPoint.GetValue(CPoint*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1241">
<summary>
Returns current value.
</summary>
<returns>
TRUE, if the current value was successfully retrieved; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value of animation point. If this method fails or underlying COM objects for
X and Y coordinates have not been initialized, ptValue contains default
value, which was previously set in constructor or by SetDefaultValue.
</remarks>
<param name="ptValue">Output. Contains the current value when this method returns.</param>
</member>
<member name="M:CAnimationPoint.op_Assign(CPoint!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1255">
<summary>
Assigns ptSrc to CAnimationPoint.
</summary>
<remarks>
Assigns ptSrc to CAnimationPoint. It's recommended to do that before animation start, because this operator calls
SetDefaultValue, which recreates the underlying COM objects for X and Y coordinates if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="ptSrc">Refers to CPoint or POINT.</param>
</member>
<member name="M:CAnimationPoint.op_Implicit~CPoint" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1269">
<summary>
Converts a CAnimationPoint to a CPoint.
</summary>
<returns>
Current value of CAnimationPoint as CPoint.
</returns>
<remarks>
This function internally calls GetValue. If GetValue for some reason fails, the returned point will contain default values for X and Y coordinates.
</remarks>
</member>
<member name="M:CAnimationPoint.GetX" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1285">
<summary>
Provides access to CAnimationVariable for X coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing X coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing X coordinate.
</remarks>
</member>
<member name="M:CAnimationPoint.GetY" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1296">
<summary>
Provides access to CAnimationVariable for Y coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Y coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Y coordinate.
</remarks>
</member>
<member name="M:CAnimationPoint.AddTransition(CBaseTransition*,CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1307">
<summary>
Adds transitions for X and Y coordinates.
</summary>
<remarks>
Call this function to add the specified transitions to the internal list of transitions to be applied to animation variables for X and Y coordinates.
When you add transitions, they are not applied immediately and stored in an internal list. Transitions are applied
(added to a storyboard for a particular value) when you call CAnimationController::AnimateGroup.
If you don't need to apply a transition to one of coordinates, you can pass NULL.
</remarks>
<param name="pXTransition">A pointer to transition for X coordinates.</param>
<param name="pYTransition">A pointer to transition for Y coordinate.</param>
</member>
<member name="M:CAnimationPoint.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1321">
<summary>
Puts the encapsulated animation variables into a list.
</summary>
<param name="lst">When the function returns, it contains pointers to two CAnimationVariable objects
representing the X and Y coordinates.</param>
</member>
<member name="T:CAnimationSize" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1329">
<summary>
Implements the functionality of a size object whose dimensions can be animated.
</summary>
<remarks>
The CAnimationSize class encapsulates two CAnimationVariable objects and can represent in applications
a size. For example, you can use this class to animate a size of any two dimensional object on the screen (like rectangle, control etc).
To use this class in application, just instantiate an object of this class, add it to animation controller using
CAnimationController::AddAnimationObject and call AddTransition for each transition to be applied to Width and/or Height.
</remarks>
</member>
<member name="F:CAnimationSize.m_cxValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1342">
<summary>
The encapsulated animation variable that represents width of animation size.
</summary>
</member>
<member name="F:CAnimationSize.m_cyValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1347">
<summary>
The encapsulated animation variable that represents height of animation size.
</summary>
</member>
<member name="M:CAnimationSize.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1353">
<summary>
Constructs an animation size object.
</summary>
<remarks>
The object is constructed with default values for width, height, Object ID and Group ID, which will be set to 0. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
</member>
<member name="M:CAnimationSize.#ctor(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1362">
<summary>
Constructs an animation size object.
</summary>
<remarks>
The object is constructed with specified values for width, height, Object ID and Group ID. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
<param name="szDefault">Specifies default size.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationSize.SetDefaultValue(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1375">
<summary>
Sets default value.
</summary>
<remarks>
Use this function to set a default value to animation object. This methods assigns default values to Width and Height
of animation size. It also recreates underlying COM objects if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="szDefault">Specifies new default size.</param>
</member>
<member name="M:CAnimationSize.GetDefaultValue" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1386">
<summary>
Returns the default values for Width and Height.
</summary>
<returns>
A CSize object containing default values.
</returns>
<remarks>
Call this function to retrieve default value, which was previously set by constructor or SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationSize.GetValue(CSize*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1397">
<summary>
Returns current value.
</summary>
<returns>
TRUE, if the current value was successfully retrieved; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value of animation size. If this method fails or underlying COM objects for
Width and Size have not been initialized, szValue contains default value, which was previously set in constructor or by SetDefaultValue.
</remarks>
<param name="szValue">Output. Contains the current value when this method returns.</param>
</member>
<member name="M:CAnimationSize.GetCX" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1410">
<summary>
Provides access to CAnimationVariable representing Width.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Width.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Width.
</remarks>
</member>
<member name="M:CAnimationSize.GetCY" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1421">
<summary>
Provides access to CAnimationVariable representing Height.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Height.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Height.
</remarks>
</member>
<member name="M:CAnimationSize.op_Assign(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1432">
<summary>
Assigns szSrc to CAnimationSize.
</summary>
<remarks>
Assigns szSrc to CAnimationSize. It's recommended to do that before animation start, because this operator calls
SetDefaultValue, which recreates the underlying COM objects for Width and Height if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="szSrc">Refers to CSize or SIZE.</param>
</member>
<member name="M:CAnimationSize.op_Implicit~CSize" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1446">
<summary>
Converts a CAnimationSize to a CSize.
</summary>
<returns>
Current value of animation size as CSize.
</returns>
<remarks>
This function internally calls GetValue. If GetValue for some reason fails, the returned size will contain default values for Width and Height.
</remarks>
</member>
<member name="M:CAnimationSize.AddTransition(CBaseTransition*,CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1463">
<summary>
Adds transitions for Width and Height.
</summary>
<remarks>
Call this function to add the specified transitions to the internal list of transitions to be applied to animation variables for Width and Height.
When you add transitions, they are not applied immediately and stored in an internal list. Transitions are applied
(added to a storyboard for a particular value) when you call CAnimationController::AnimateGroup.
If you don't need to apply a transition to one of dimensions, you can pass NULL.
</remarks>
<param name="pCXTransition">A pointer to transition for Width.</param>
<param name="pCYTransition">A pointer to transition for Height.</param>
</member>
<member name="M:CAnimationSize.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1478">
<summary>
Puts the encapsulated animation variables into a list.
</summary>
<param name="lst">When the function returns, it contains pointers to two CAnimationVariable objects
representing the width and height.</param>
</member>
<member name="T:CAnimationColor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1486">
<summary>
Implements the functionality of a color whose red, green and blue components can be animated.
</summary>
<remarks>
The CAnimationColor class encapsulates three CAnimationVariable objects and can represent in applications
a color. For example, you can use this class to animate colors of any object on the screen (like text color, background color etc).
To use this class in application, just instantiate an object of this class, add it to animation controller using
CAnimationController::AddAnimationObject and call AddTransition for each transition to be applied to Red, Green and Blue components.
</remarks>
</member>
<member name="F:CAnimationColor.m_rValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1499">
<summary>
The encapsulated animation variable that represents Red component of animation color.
</summary>
</member>
<member name="F:CAnimationColor.m_gValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1504">
<summary>
The encapsulated animation variable that represents Green component of animation color.
</summary>
</member>
<member name="F:CAnimationColor.m_bValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1509">
<summary>
The encapsulated animation variable that represents Blue component of animation color.
</summary>
</member>
<member name="M:CAnimationColor.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1515">
<summary>
Constructs a CAnimationColor object.
</summary>
<remarks>
The object is constructed with default values for red, green, blue, Object ID and Group ID, which will be set to 0. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
</member>
<member name="M:CAnimationColor.#ctor(System.UInt32!System.Runtime.CompilerServices.IsLong,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1524">
<summary>
Constructs an animation color object.
</summary>
<remarks>
The object is constructed with specified values for RGB components, Object ID and Group ID. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
<param name="color">Specifies default color.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationColor.SetDefaultValue(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1537">
<summary>
Sets default value.
</summary>
<remarks>
Use this function to set a default value to animation object. This methods assigns default values to color components
of animation color. It also recreates underlying COM objects if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="color">Specifies new default values for red, green and blue components.</param>
</member>
<member name="M:CAnimationColor.GetDefaultValue" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1548">
<summary>
Returns the default values for color components.
</summary>
<returns>
A COLORREF value containing defaults for RGB components.
</returns>
<remarks>
Call this function to retrieve default value, which was previously set by constructor or SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationColor.GetValue(System.UInt32!System.Runtime.CompilerServices.IsLong*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1559">
<summary>
Returns current value.
</summary>
<returns>
TRUE, if the current value was successfully retrieved; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value of animation color. If this method fails or underlying COM objects for
color components have not been initialized, color contains default value, which was previously set in constructor or by SetDefaultValue.
</remarks>
<param name="color">Output. Contains the current value when this method returns.</param>
</member>
<member name="M:CAnimationColor.GetR" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1572">
<summary>
Provides access to CAnimationVariable representing Red component.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Red component.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Red component.
</remarks>
</member>
<member name="M:CAnimationColor.GetG" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1583">
<summary>
Provides access to CAnimationVariable representing Green component.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Green component.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Green component.
</remarks>
</member>
<member name="M:CAnimationColor.GetB" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1594">
<summary>
Provides access to CAnimationVariable representing Blue component.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing Blue component.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing Blue component.
</remarks>
</member>
<member name="M:CAnimationColor.op_Assign(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1605">
<summary>
Assigns color to CAnimationColor.
</summary>
<remarks>
It's recommended to do that before animation start, because this operator calls
SetDefaultValue, which recreates the underlying COM objects for color components if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="color">Specifies new value Animation Color.</param>
</member>
<member name="M:CAnimationColor.op_Implicit~System.UInt32!System.Runtime.CompilerServices.IsLong" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1619">
<summary>
Converts a CAnimationColor to COLORREF.
</summary>
<returns>
Current value of animation color object as COLORREF.
</returns>
<remarks>
This function internally calls GetValue. If GetValue for some reason fails, the returned COLORREF will contain default values for all color components.
</remarks>
</member>
<member name="M:CAnimationColor.AddTransition(CBaseTransition*,CBaseTransition*,CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1635">
<summary>
Adds transitions for Red, Green and Blue components.
</summary>
<remarks>
Call this function to add the specified transitions to the internal list of transitions to be applied to animation variables representing color components.
When you add transitions, they are not applied immediately and stored in an internal list. Transitions are applied
(added to a storyboard for a particular value) when you call CAnimationController::AnimateGroup.
If you don't need to apply a transition to one of the color components, you can pass NULL.
</remarks>
<param name="pRTransition">Transition for Red component.</param>
<param name="pGTransition">Transition for Green component.</param>
<param name="pBTransition">Transition for Blue component.</param>
</member>
<member name="M:CAnimationColor.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1650">
<summary>
Puts the encapsulated animation variables into a list.
</summary>
<param name="lst">When the function returns, it contains pointers to three CAnimationVariable objects
representing red, green and blue components.</param>
</member>
<member name="T:CAnimationRect" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1658">
<summary>
Implements the functionality of a rectangle whose top, left, right and bottom sides can be animated.
</summary>
<remarks>
The CAnimationRect class encapsulates four CAnimationVariable objects and can represent in applications
a rectangle.
To use this class in application, just instantiate an object of this class, add it to animation controller using
CAnimationController::AddAnimationObject and call AddTransition for each transition to be applied to left, right top and bottom coordinates.
</remarks>
</member>
<member name="F:CAnimationRect.m_leftValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1671">
<summary>
The encapsulated animation variable that represents Left bound of animation rectangle.
</summary>
</member>
<member name="F:CAnimationRect.m_topValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1676">
<summary>
The encapsulated animation variable that represents Top bound of animation rectangle.
</summary>
</member>
<member name="F:CAnimationRect.m_rightValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1681">
<summary>
The encapsulated animation variable that represents Right bound of animation rectangle.
</summary>
</member>
<member name="F:CAnimationRect.m_bottomValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1686">
<summary>
The encapsulated animation variable that represents Bottom bound of animation rectangle.
</summary>
</member>
<member name="F:CAnimationRect.m_szInitial" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1691">
<summary>
Specifies initial size of animation rectangle.
</summary>
</member>
<member name="M:CAnimationRect.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1697">
<summary>
Constructs a CAnimationRect object.
</summary>
<remarks>
The object is constructed with default values for left, top, right and bottom, Object ID and Group ID, which will be set to 0. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
</member>
<member name="M:CAnimationRect.#ctor(CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1706">
<summary>
Constructs an animation rect object.
</summary>
<remarks>
The object is constructed with specified rect coordinates, Object ID and Group ID. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
<param name="rect">Specifies default rectangle.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationRect.#ctor(CPoint!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1719">
<summary>
Constructs an animation rect object.
</summary>
<remarks>
The object is constructed with specified top-left corner coordinates and size of rectangle, Object ID and Group ID. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
<param name="pt">Coordinate of top-left corner.</param>
<param name="sz">Size of rectangle.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationRect.#ctor(System.Int32,System.Int32,System.Int32,System.Int32,System.UInt32,System.UInt32,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1733">
<summary>
Constructs an animation rect object.
</summary>
<remarks>
The object is constructed with specified coordinates of each side, Object ID and Group ID. They can be changed
later at runtime using SetDefaultValue and SetID.
</remarks>
<param name="nLeft">Specifies coordinate of left bound.</param>
<param name="nTop">Specifies coordinate of top bound.</param>
<param name="nRight">Specifies coordinate of right bound.</param>
<param name="nBottom">Specifies coordinate of bottom bound.</param>
<param name="nGroupID">Specifies Group ID.</param>
<param name="nObjectID">Specifies Object ID.</param>
<param name="dwUserData">Specifies user-defined data.</param>
</member>
<member name="M:CAnimationRect.SetDefaultValue(CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1749">
<summary>
Sets default value.
</summary>
<remarks>
Use this function to set a default value to animation object. This methods assigns default values to rectangle's bounds.
It also recreates underlying COM objects if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="rect">Specifies new default values for left, top, right and bottom.</param>
</member>
<member name="M:CAnimationRect.GetDefaultValue" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1760">
<summary>
Returns the default values for rectangle's bounds.
</summary>
<returns>
A CRect value containing defaults for left, right, top and bottom.
</returns>
<remarks>
Call this function to retrieve default value, which was previously set by constructor or SetDefaultValue.
</remarks>
</member>
<member name="M:CAnimationRect.GetValue(CRect*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1771">
<summary>
Returns current value.
</summary>
<returns>
TRUE, if the current value was successfully retrieved; otherwise FALSE.
</returns>
<remarks>
Call this function to retrieve the current value of animation rectangle. If this method fails or underlying COM objects for
left, top, right and bottom have not been initialized, rect contains default value, which was previously set in constructor or by SetDefaultValue.
</remarks>
<param name="rect">Output. Contains the current value when this method returns.</param>
</member>
<member name="M:CAnimationRect.GetLeft" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1784">
<summary>
Provides access to CAnimationVariable representing left coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing left coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing the left coordinate.
</remarks>
</member>
<member name="M:CAnimationRect.GetTop" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1795">
<summary>
Provides access to CAnimationVariable representing top coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing top coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing the top coordinate.
</remarks>
</member>
<member name="M:CAnimationRect.GetRight" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1806">
<summary>
Provides access to CAnimationVariable representing right coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing right coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing the right coordinate.
</remarks>
</member>
<member name="M:CAnimationRect.GetBottom" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1817">
<summary>
Provides access to CAnimationVariable representing bottom coordinate.
</summary>
<returns>
A reference to encapsulated CAnimationVariable representing bottom coordinate.
</returns>
<remarks>
You can call this method to get direct access to underlying CAnimationVariable representing the bottom coordinate.
</remarks>
</member>
<member name="M:CAnimationRect.op_Assign(tagRECT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1828">
<summary>
Assigns rect to CAnimationRect.
</summary>
<remarks>
It's recommended to do that before animation start, because this operator calls
SetDefaultValue, which recreates the underlying COM objects for color components if they have been created. If you
subscribed this animation object to events (ValueChanged or IntegerValueChanged), you need to re-enable these events.
</remarks>
<param name="rect">The new value of animation rectangle.</param>
</member>
<member name="M:CAnimationRect.op_Implicit~tagRECT" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1842">
<summary>
Converts a CAnimationRect to RECT.
</summary>
<returns>
Current value of animation rectangle as RECT.
</returns>
<remarks>
This function internally calls GetValue. If GetValue for some reason fails, the returned RECT will contain default values for all rectangle coordinates.
</remarks>
</member>
<member name="M:CAnimationRect.AddTransition(CBaseTransition*,CBaseTransition*,CBaseTransition*,CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1858">
<summary>
Adds transitions for left, top, right and bottom coordinates.
</summary>
<remarks>
Call this function to add the specified transitions to the internal list of transitions to be applied to animation variables for each rectangle sides.
When you add transitions, they are not applied immediately and stored in an internal list. Transitions are applied
(added to a storyboard for a particular value) when you call CAnimationController::AnimateGroup.
If you don't need to apply a transition to one of the rectangle sides, you can pass NULL.
</remarks>
<param name="pLeftTransition">Specifies transition for the left side.</param>
<param name="pTopTransition">Specifies transition for the top side.</param>
<param name="pRightTransition">Specifies transition for the right side.</param>
<param name="pBottomTransition">Specifies transition for the bottom side.</param>
</member>
<member name="F:CAnimationRect.m_bFixedSize" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1875">
<summary>
Specifies whether the rectangle has fixed size.
</summary>
<remarks>
If this member is true, then the size of rectangle is fixed and right and bottom values
are recalculated each time the top-left corner is  moved according to the fixed size.
Set this value to TRUE to easily move the rectangle around the screen. In this case transitions applied to
right and bottom coordinates are ignored. The size is stored internally when you construct the object and/or
call SetDefaultValue. By default this member is set to FALSE.
</remarks>
</member>
<member name="M:CAnimationRect.GetAnimationVariableList(CList&lt;CAnimationVariable**,CAnimationVariable**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1888">
<summary>
Puts the encapsulated animation variables into a list.
</summary>
<param name="lst">When the function returns, it contains pointers to four CAnimationVariable objects
representing coordinates of rectangle.</param>
</member>
<member name="T:CAnimationGroup" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1896">
<summary>
Implements an animation group, which combines an animation storyboard, animation objects and transitions
to define an animation.
</summary>
<remarks>
Animation groups are created automatically by animation controller (CAnimationController) when you add animation
objects using CAnimationController::AddAnimationObject.
An animation group is identified by GroupID, which is usually taken as a parameter to manipulate animation groups.
The GroupID is taken from the first animation object being added to a new animation group.
An encapsulated animation storyboard is created after you call CAnimationController::AnimateGroup and can be
accessed via public member m_pStoryboard.
</remarks>
</member>
<member name="F:CAnimationGroup.m_nGroupID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1911">
<summary>
A unique identifier of animation group.
</summary>
</member>
<member name="F:CAnimationGroup.m_pParentController" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1916">
<summary>
A pointer to animation controller this group belongs to.
</summary>
</member>
<member name="M:CAnimationGroup.AddKeyframes(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1921">
<summary>
A helper that adds keyframes to a storyboard.
</summary>
<param name="pStoryboard">A pointer to a storyboard COM object.</param>
<param name="bAddDeep">Specifies whether this method should add to the storyboard keyframes that depend on other keyframes.</param>
</member>
<member name="M:CAnimationGroup.AddTransitions(IUIAnimationStoryboard*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1928">
<summary>
A helper that adds transitions to a storyboard.
</summary>
<param name="pStoryboard">A pointer to a storyboard COM object.</param>
<param name="bDependOnKeyframes">Specifies whether this method should add to the storyboard transitions that depend on other keyframes.</param>
</member>
<member name="M:CAnimationGroup.CreateTransitions" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1935">
<summary>
A helper that creates COM transition objects.
</summary>
<returns>
TRUE is the method succeeds, otherwise FALSE.
</returns>
</member>
<member name="M:CAnimationGroup.#ctor(CAnimationController*,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1944">
<summary>
Constructs an animation group.
</summary>
<param name="pParentController">A pointer to animation controller that creates a group.</param>
<param name="nGroupID">Specifies GroupID.</param>
</member>
<member name="M:CAnimationGroup.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1951">
<summary>
The destructor. Called when an animation group is being destroyed.
</summary>
</member>
<member name="M:CAnimationGroup.GetGroupID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1956">
<summary>
Returns GroupID.
</summary>
<returns>
A group identifier.
</returns>
</member>
<member name="M:CAnimationGroup.ApplyTransitions" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1964">
<summary>
Applies transitions to animation objects.
</summary>
<remarks>
This method ASSERTS in debug mode if storyboard has not been created.
It creates all transitions first, then adds "static" keyframes (keyframes that depend on offsets),
adds transitions that do not depend on keyframes, adds keyframes depending on transitions and other keyframes,
and at last adds transitions that depend on keyframes.
</remarks>
</member>
<member name="M:CAnimationGroup.RemoveTransitions" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1975">
<summary>
Removes transitions from animation objects that belong to an animation group.
</summary>
<remarks>
If m_bAutoclearTransitions flag is set to TRUE, this method loops over all animation objects that belong to the group
and calls CAnimationObject::ClearTransitions(FALSE).
</remarks>
</member>
<member name="M:CAnimationGroup.RemoveKeyframes" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1984">
<summary>
Removes and optionally destroys all keyframes that belong to an animation group.
</summary>
<remarks>
If m_bAutodestroyKeyframes member is TRUE then keyframes are removed and destroyed, otherwise keyframes are
just removed from the internal list of keyframes.
</remarks>
</member>
<member name="M:CAnimationGroup.FindAnimationObject(IUIAnimationVariable*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="1993">
<summary>
Finds an animation object that contains the specified animation variable.
</summary>
<returns>
A pointer to animation object, or NULL if animation object is not found.
</returns>
<param name="pVariable">A pointer to animation variable.</param>
</member>
<member name="M:CAnimationGroup.Animate(IUIAnimationManager*,IUIAnimationTimer*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2002">
<summary>
Animates a group.
</summary>
<returns>
TRUE if the method succeeds; otherwise FALSE.
</returns>
<remarks>
This method creates an internal storyboard, creates and applies transitions and schedules an animation
if bScheduleNow is TRUE. If bScheduleNow is FALSE, you need to call Schedule to start animation at the
specified time.
</remarks>
<param name="pManager"></param>
<param name="pTimer"></param>
<param name="bScheduleNow"></param>
</member>
<member name="M:CAnimationGroup.Schedule(IUIAnimationTimer*,System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2018">
<summary>
Schedules an animation at the specified time.
</summary>
<returns>
TRUE if the method succeeds; FALSE if the method fails or if Animate has not been called with bScheduleNow set to FALSE.
</returns>
<remarks>
Call this function to schedule an animation at the specified time. You must call Animate with bScheduleNow set to FALSE first.
</remarks>
<param name="pTimer">A pointer to animation timer.</param>
<param name="time">Specifies time to schedule the animation.</param>
</member>
<member name="M:CAnimationGroup.SetAutodestroyTransitions(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2031">
<summary>
Directs all animation objects that belong to group automatically destroy transitions.
</summary>
<remarks>
Set this value to FALSE only if you allocate transitions on the stack. The default value is TRUE, therefore
it's highly recommended to allocate transition objects using operator new.
</remarks>
<param name="bAutoDestroy">Specifies how to destroy transitions.</param>
</member>
<member name="F:CAnimationGroup.m_lstAnimationObjects" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2042">
<summary>
Contains a list of animation objects.
</summary>
</member>
<member name="F:CAnimationGroup.m_lstKeyFrames" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2047">
<summary>
Contains a list of keyframes.
</summary>
</member>
<member name="F:CAnimationGroup.m_pStoryboard" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2052">
<summary>
Points to animation storyboard. This pointer is valid only after call on Animate.
</summary>
</member>
<member name="F:CAnimationGroup.m_bAutodestroyKeyframes" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2057">
<summary>
Specifies how to destroy keyframes. If this value is TRUE, all keyframes are removed and destroyed;
otherwise they are removed from the list only. The default value is TRUE.
</summary>
</member>
<member name="F:CAnimationGroup.m_bAutoclearTransitions" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2063">
<summary>
Specifies how to clear transitions from animation objects that belong to group. If this member is TRUE,
transitions are removed automatically when an animation has been scheduled. Otherwise you need to remove
transitions manually.
</summary>
</member>
<member name="F:CAnimationGroup.m_bAutodestroyAnimationObjects" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2070">
<summary>
Specifies how to destroy animation objects. If this parameter is TRUE, animation objects will be destroyed automatically
when the group is destroyed. Otherwise animation objects must be destroyed manually. The default value is FALSE.
Set this value to TRUE only if all animation objects that belong to group are allocated dynamically with operator new.
</summary>
</member>
<member name="T:CAnimationController" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2090">
<summary>
Implements the animation controller, which provides a central interface for creating and managing UI animations.
</summary>
<remarks>
The CAnimationController class is the key class that manages animations.
You may create one or more instances of animation controller in an application and, optionally, connect an instance of
animation controller to a CWnd object using CAnimationController::SetRelatedWnd. This connection is required to send WM_PAINT messages
to the related window automatically when animation manager status has changed or animation timer has been updated.
If you do not enable this relation, you must redraw a window that displays an animation manually. For this purpose you can derive a class
from CAnimationController and override OnAnimationManagerStatusChanged and/or OnAnimationTimerPostUpdate and invalidate one or
more windows when necessary.
</remarks>
</member>
<member name="F:CAnimationController.m_bIsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2106">
<summary>
Specifies whether an animation controller is valid or not.
This member is set to FALSE if current OS does not support Windows Animation API.
</summary>
</member>
<member name="F:CAnimationController.m_pAnimationManager" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2112">
<summary>
Stores a pointer to Animation Manager COM object.
</summary>
</member>
<member name="F:CAnimationController.m_pTransitionLibrary" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2117">
<summary>
Stores a pointer to Transition Library COM object.
</summary>
</member>
<member name="F:CAnimationController.m_pAnimationTimer" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2122">
<summary>
Stores a pointer to Animation Timer COM object.
</summary>
</member>
<member name="F:CAnimationController.m_pTransitionFactory" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2127">
<summary>
Stores a pointer to Transition Factory COM object.
</summary>
</member>
<member name="F:CAnimationController.m_pRelatedWnd" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2132">
<summary>
A pointer to a related CWnd object, which can be automatically redrawn when
the status of animation manager has changed, or post update event has occurred. Can be NULL.
</summary>
</member>
<member name="F:CAnimationController.m_lstAnimationGroups" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2138">
<summary>
A list of animation groups that belong to this animation controller.
</summary>
</member>
<member name="F:CAnimationController.g_KeyframeStoryboardStart" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2143">
<summary>
A keyframe that represents start of storyboard.
</summary>
</member>
<member name="M:CAnimationController.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2149">
<summary>
Constructs an animation controller.
</summary>
</member>
<member name="M:CAnimationController.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2154">
<summary>
The destructor. Called when animation controller object is being destroyed.
</summary>
</member>
<member name="M:CAnimationController.GetUIAnimationManager" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2159">
<summary>
Provides access to encapsulated IUIAnimationManager object.
</summary>
<returns>
A pointer to IUIAnimationManager interface or NULL, if creation of animation manager failed.
</returns>
<remarks>
If current OS does not support Windows Animation API, this method returns NULL and after that all subsequent calls
on CAnimationController::IsValid return FALSE.
You may need to access IUIAnimationManager in order to call its interface methods, which are not wrapped by
animation controller.
</remarks>
</member>
<member name="M:CAnimationController.GetUITransitionLibrary" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2173">
<summary>
Provides access to encapsulated IUIAnimationTransitionLibrary object.
</summary>
<returns>
A pointer to IUIAnimationTransitionLibrary interface or NULL, if creation of transition library failed.
</returns>
<remarks>
If current OS does not support Windows Animation API, this method returns NULL and after that all subsequent calls
on CAnimationController::IsValid return FALSE.
</remarks>
</member>
<member name="M:CAnimationController.GetUIAnimationTimer" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2185">
<summary>
Provides access to encapsulated IUIAnimationTimer object.
</summary>
<returns>
A pointer to IUIAnimationTimer interface or NULL, if creation of animation timer failed.
</returns>
<remarks>
If current OS does not support Windows Animation API, this method returns NULL and after that all subsequent calls
on CAnimationController::IsValid return FALSE.
</remarks>
</member>
<member name="M:CAnimationController.GetUITransitionFactory" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2197">
<summary>
A pointer to IUIAnimationTransitionFactory interface or NULL, if creation of transition library failed.
</summary>
<returns>
A pointer to IUIAnimationTransitionFactory or NULL, if creation of transition factory failed.
</returns>
<remarks>
If current OS does not support Windows Animation API, this method returns NULL and after that all subsequent calls
on CAnimationController::IsValid return FALSE.
</remarks>
</member>
<member name="M:CAnimationController.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2209">
<summary>
Tells whether animation controller is valid.
</summary>
<returns>
TRUE if animation controller is valid; otherwise FALSE.
</returns>
<remarks>
This method returns FALSE only if Windows Animation API is not supported on the current OS and creation of
animation manager failed because it's not registered. You need to call GetUIAnimationManager at least once after initialization of
COM libraries to cause setting of this flag.
</remarks>
</member>
<member name="M:CAnimationController.GetKeyframeStoryboardStart" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2222">
<summary>
Returns a keyframe that identifies start of storyboard.
</summary>
<returns>
A pointer to base keyframe, which identifies start of storyboard.
</returns>
<remarks>
Obtain this keyframe to base any other keyframes or transitions on the moment in time when a storyboard starts.
</remarks>
</member>
<member name="M:CAnimationController.EnableAnimationManagerEvent(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2233">
<summary>
Sets or releases a handler to call when animation manager's status changes.
</summary>
<returns>
TRUE if the handler was successfully set or released.
</returns>
<remarks>
When a handler is set (enabled) Windows Animation calls OnAnimationManagerStatusChanged when animation manager's status changes.
</remarks>
<param name="bEnable">Specifies whether to set or release a handler.</param>
</member>
<member name="M:CAnimationController.EnablePriorityComparisonHandler(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2245">
<summary>
Sets or releases the priority comparison handler to call to determine whether a scheduled storyboard can be cancelled,
concluded, trimmed or compressed.
</summary>
<returns>
TRUE if the handler was successfully set or released.
</returns>
<remarks>
When a handler is set (enabled) Windows Animation calls the following virtual methods depending on dwHandlerType:
OnHasPriorityCancel, OnHasPriorityConclude, OnHasPriorityTrim, OnHasPriorityCompress.
dwHandler can be a combination of the following flags:
UI_ANIMATION_PHT_NONE - release all handlers
UI_ANIMATION_PHT_CANCEL - set Cancel comparison handler
UI_ANIMATION_PHT_CONCLUDE - set Conclude comparison handler
UI_ANIMATION_PHT_COMPRESS - set Compress comparison handler
UI_ANIMATION_PHT_TRIM - set Trim comparison handler
UI_ANIMATION_PHT_CANCEL_REMOVE - remove Cancel comparison handler
UI_ANIMATION_PHT_CONCLUDE_REMOVE - remove Conclude comparison handler
UI_ANIMATION_PHT_COMPRESS_REMOVE - remove Compress comparison handler
UI_ANIMATION_PHT_TRIM_REMOVE - remove Trim comparison handler
</remarks>
<param name="dwHandlerType">A combination of UI_ANIMATION_PHT_ flags (see remarks), which specifies what handlers to set or release.</param>
</member>
<member name="M:CAnimationController.EnableStoryboardEventHandler(System.UInt32,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2269">
<summary>
Sets or releases a handler for storyboard status and update events.
</summary>
<returns>
TRUE if the handler was successfully set or released; FALSE if the specified animation group is now found or
animation for the specified group has not been initiated and its internal storyboard is NULL.
</returns>
<remarks>
When a handler is set (enabled) Windows Animation API calls OnStoryboardStatusChanges and OnStoryboardUpdated virtual methods.
A handler must be set after CAnimationController::Animate has been called for the specified animation group, because
it creates encapsulated IUIAnimationStoryboard object.
</remarks>
<param name="nGroupID">Specifies Group ID.</param>
<param name="bEnable">Specifies whether to set or release a handler.</param>
</member>
<member name="M:CAnimationController.EnableAnimationTimerEventHandler(System.Int32,__MIDL___MIDL_itf_UIAnimation_0000_0012_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2285">
<summary>
Sets or releases a handler for timing events and handler for timing updates.
</summary>
<returns>
TRUE if handlers were successfully set or released; FALSE if this method is called for a second time without
releasing the handlers first, or if any other error occurs.
</returns>
<remarks>
When the handlers are set (enabled) Windows Animation API calls OnAnimationTimerPreUpdate, OnAnimationTimerPostUpdate,
OnRenderingTooSlow methods.
You need to enable animation timers to allow Windows Animation API update storyboards. Otherwise you'll need to
call CAnimationController::UpdateAnimationManager in order to direct the animation manager to update the values
of all animation variables.
</remarks>
<param name="bEnable">Specifies whether to set or release the handlers.</param>
<param name="idleBehavior">Specifies idle behavior for timer update handler.</param>
</member>
<member name="M:CAnimationController.UpdateAnimationManager" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2303">
<summary>
Directs the animation manager to update the values of all animation variables.
</summary>
<remarks>
Calling this method advances the animation manager to current time, changing statuses of storyboards as necessary
and updating any animation variables to appropriate interpolated values. Internally this method calls
IUIAnimationTimer::GetTime(timeNow) and IUIAnimationManager::Update(timeNow). Override this method in a derived
class to customize this behavior.
</remarks>
</member>
<member name="M:CAnimationController.IsAnimationInProgress" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2314">
<summary>
Tells whether at least one group is playing animation.
</summary>
<returns>
TRUE if there is an animation in progress for this animation controller; otherwise FALSE.
</returns>
<remarks>
Checks status of animation manager and returns TRUE if the status is UI_ANIMATION_MANAGER_BUSY.
</remarks>
</member>
<member name="M:CAnimationController.SetRelatedWnd(CWnd*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2325">
<summary>
Establishes a relationship between animation controller and a window.
</summary>
<remarks>
If a related CWnd object is set, the animation controller can automatically update it (send WM_PAINT message) when
the status of animation manager has changed or timer post update event has occurred.
</remarks>
<param name="pWnd">A pointer to window object to set.</param>
</member>
<member name="M:CAnimationController.AddAnimationObject(CAnimationBaseObject*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2338">
<summary>
Adds an animation object to a group that belongs to the animation controller.
</summary>
<returns>
A pointer to existing or new animation group where pObject has been added if function succeeds; NULL if
pObject has already been added to a group that belongs to another animation controller.
</returns>
<remarks>
Call this method to add an animation object to the animation controller. An object will be added to a group
according to object's GroupID (see CAnimationBaseObject::SetID). The animation controller will create a new
group if it's the first object being added with the specified GroupID. An animation object can be added to
one animation controller only. If you need to add an object to another controller, call RemoveAnimationObject first.
If you call SetID with new GroupID for an object that has been already added to a group, the object will be removed
from the old group and added to another group with specified ID.
</remarks>
<param name="pObject">A pointer to an animation object.</param>
</member>
<member name="M:CAnimationController.RemoveAnimationObject(CAnimationBaseObject*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2356">
<summary>
Remove an animation object from animation controller.
</summary>
<remarks>
Removes an animation object from animation controller and animation group. Call this function if
a particular object should not be animated anymore, or if you need to move the object to another animation controller.
In the last case bNoDelete must be TRUE.
</remarks>
<param name="pObject">A pointer to an animation object.</param>
<param name="bNoDelete">If this parameter is TRUE the object will not be deleted upon remove.</param>
</member>
<member name="M:CAnimationController.RemoveAnimationGroup(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2368">
<summary>
Removes an animation group with specified ID from animation controller.
</summary>
<remarks>
This method removes an animation group from the internal list of groups and deletes it, therefore if you stored
a pointer to that animation group, it must be invalidated. If CAnimationGroup::m_bAutodestroyAnimationObjects is TRUE,
all animation objects that belong to that group will be deleted; otherwise their references to parent animation
controller will be set to NULL and they can be added to another controller.
</remarks>
<param name="nGroupID">Specifies animation group ID.</param>
</member>
<member name="M:CAnimationController.RemoveAllAnimationGroups" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2380">
<summary>
Removes all animation groups from animation controller.
</summary>
<remarks>
All groups will be deleted, their pointer, if stored at the application level, must be invalidated.
If CAnimationGroup::m_bAutodestroyAnimationObjects for a group being deleted is TRUE,
all animation objects that belong to that group will be deleted; otherwise their references to parent animation
controller will be set to NULL and they can be added to another controller.
</remarks>
</member>
<member name="M:CAnimationController.RemoveTransitions(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2391">
<summary>
Removes transitions from animation objects that belong to the specified group.
</summary>
<remarks>
The group loops over its animation objects and calls ClearTransitions(FALSE) for each animation object.
This method is called by the framework after animation has been scheduled.
</remarks>
<param name="nGroupID">Specifies Group ID.</param>
</member>
<member name="M:CAnimationController.CreateKeyframe(System.UInt32,CBaseTransition*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2401">
<summary>
Creates a keyframe that depends on transition and adds it to the specified group.
</summary>
<returns>
A pointer to newly created keyframe if the function succeeds.
</returns>
<remarks>
You can store the returned pointer and base other keyframes on the newly created keyframe (see the second overload).
It's possible to begin transitions at keyframes - see CBaseTransition::SetKeyframes.
You don't need to delete keyframes created in this way, because they are deleted automatically by animation groups.
Be careful when creating keyframes based on other keyframes and transitions and avoid circular references.
</remarks>
<param name="nGroupID">Specifies Group ID for which keyframe is created.</param>
<param name="pTransition">A pointer to transition. Keyframe will be inserted to storyboard after this transition.</param>
</member>
<member name="M:CAnimationController.CreateKeyframe(System.UInt32,CBaseKeyFrame*,System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2417">
<summary>
Creates a keyframe that depends on other keyframe with optional offset in seconds and adds it to the specified group.
</summary>
<returns>
A pointer to newly created keyframe if the function succeeds.
</returns>
<remarks>
You can store the returned pointer and base other keyframes on the newly created keyframe (see the second overload).
It's possible to begin transitions at keyframes - see CBaseTransition::SetKeyframes.
You don't need to delete keyframes created in this way, because they are deleted automatically by animation groups.
Be careful when creating keyframes based on other keyframes and transitions and avoid circular references.
</remarks>
<param name="nGroupID">Specifies Group ID for which keyframe is created.</param>
<param name="pKeyframe">A  pointer to base keyframe for this keyframe.</param>
<param name="offset">Offset in seconds from the base keyframe specified by pKeyframe.</param>
</member>
<member name="M:CAnimationController.AddKeyframeToGroup(System.UInt32,CBaseKeyFrame*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2434">
<summary>
Adds a keyframe to group.
</summary>
<returns>
TRUE if the function succeeds; otherwise FALSE.
</returns>
<remarks>
Usually you don't need to call this method, use CAnimationController::CreateKeyframe instead, which creates
and adds the created keyframe to a group automatically.
</remarks>
<param name="nGroupID">Specifies Group ID.</param>
<param name="pKeyframe">A pointer to a keyframe.</param>
</member>
<member name="M:CAnimationController.FindAnimationGroup(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2448">
<summary>
Finds an animation group by its Group ID.
</summary>
<returns>
A pointer to animation group or NULL if the group with specified ID is not found.
</returns>
<remarks>
Use this method to find an animation group at runtime. A group is created and added to the internal list of animation groups
when a first animation object with particular GroupID is being added to animation controller.
</remarks>
<param name="nGroupID">Specifies a GroupID.</param>
</member>
<member name="M:CAnimationController.FindAnimationGroup(IUIAnimationStoryboard*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2461">
<summary>
Finds an animation group by its storyboard.
</summary>
<returns>
A pointer to animation group if succeeds, or NULL if no group plays the specified storyboard.
</returns>
<remarks>
This method is usually called from event handlers to find a group by pointer to storyboard that comes as a parameter to an event handler.
</remarks>
<param name="pStoryboard">A pointer to a storyboard.</param>
</member>
<member name="M:CAnimationController.FindAnimationObject(IUIAnimationVariable*,CAnimationBaseObject**,CAnimationGroup**)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2473">
<summary>
Finds animation object containing a specified animation variable.
</summary>
<returns>
TRUE if object was found; otherwise FALSE.
</returns>
<remarks>
Called from event handlers when it's required to find an animation object from incoming animation variable.
</remarks>
<param name="pVariable">A pointer to animation variable.</param>
<param name="ppObject">Output. Contains a pointer to animation object or NULL. </param>
<param name="ppGroup">Output. Contains a pointer to animation group that holds the animation object, or NULL.</param>
</member>
<member name="M:CAnimationController.AnimateGroup(System.UInt32,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2487">
<summary>
Prepares a group to run animation and optionally schedules it.
</summary>
<returns>
TRUE if animation was successfully scheduled and run.
</returns>
<remarks>
This method does the actual work creating storyboard, adding animation variables, applying transitions and setting keyframes.
It's possible to delay scheduling if you set bScheduleNow to FALSE. In this case the specified group
will hold a storyboard that has been set up for animation. At that point you can setup events for the storyboard and
animation variables. When you actually need to run the animation call CAnimationController::ScheduleGroup.
</remarks>
<param name="nGroupID">Specifies GroupID.</param>
<param name="bScheduleNow">Specifies whether to run animation right away.</param>
</member>
<member name="M:CAnimationController.ScheduleGroup(System.UInt32,System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2503">
<summary>
Schedules an animation.
</summary>
<returns>
TRUE if animation was scheduled successfully. FALSE if storyboard has not been created, or other error occurs.
</returns>
<remarks>
You must call AnimateGroup with parameter bScheduleNow set to FALSE prior ScheduleGroup. You can specify the
desired animation time obtained from IUIAnimationTimer::GetTime. If the time parameter is 0.0, the animation is scheduled for the
current time.
</remarks>
<param name="nGroupID">Specifies animation Group ID to schedule.</param>
<param name="time">Specifies time to schedule.</param>
</member>
<member name="M:CAnimationController.CleanUpGroup(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2518">
<summary>
Called by the framework to clean up the group when animation has been scheduled.
</summary>
<remarks>
This method removes all transitions and keyframes from the specified group, because they are not relevant
after an animation has been scheduled.
</remarks>
<param name="nGroupID">Specifies GroupID.</param>
</member>
<member name="M:CAnimationController.OnBeforeAnimationStart(CAnimationGroup*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2528">
<summary>
Called by the framework right before the animation is scheduled.
</summary>
<remarks>
This call is routed to related CWnd and can be overridden in a derived class to perform any
additional actions before the animation starts for the specified group.
</remarks>
<param name="pGroup">A pointer to an animation group whose animation is about to start.</param>
</member>
<member name="M:CAnimationController.OnAnimationManagerStatusChanged(__MIDL___MIDL_itf_UIAnimation_0000_0000_0002,__MIDL___MIDL_itf_UIAnimation_0000_0000_0002)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2538">
<summary>
Called by the framework in response to StatusChanged event from animation manager.
</summary>
<remarks>
This method is called if you enable animation manager events with EnableAnimationManagerEvent.
It can be overridden in a derived class to take application-specific actions. The default implementation
updates a related window if it has been set with SetRelatedWnd.
</remarks>
<param name="newStatus">New animation manager status.</param>
<param name="previousStatus">Previous animation manager status.</param>
</member>
<member name="M:CAnimationController.OnAnimationValueChanged(CAnimationGroup*,CAnimationBaseObject*,IUIAnimationVariable*,System.Double,System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2550">
<summary>
Called by the framework when value of animation variable has changed.
</summary>
<remarks>
This method is called if you enable animation variable events with EnableValueChangedEvent called for a specific
animation variable or animation object.
It can be overridden in a derived class to take application-specific actions.
</remarks>
<param name="pGroup">A pointer to an animation group that holds an animation object whose value has changed.</param>
<param name="pObject">A pointer to an animation object that contains an animation variable whose value has changed.</param>
<param name="variable">A pointer to an animation variable.</param>
<param name="newValue">Specifies new value.</param>
<param name="prevValue">Specifies previous value.</param>
</member>
<member name="M:CAnimationController.OnAnimationIntegerValueChanged(CAnimationGroup*,CAnimationBaseObject*,IUIAnimationVariable*,System.Int32,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2565">
<summary>
Called by the framework when integer value of animation variable has changed.
</summary>
<remarks>
This method is called if you enable animation variable events with EnableIntegerValueChangedEvent called for a specific
animation variable or animation object.
It can be overridden in a derived class to take application-specific actions.
</remarks>
<param name="pGroup">A pointer to an animation group that holds an animation object whose value has changed.</param>
<param name="pObject">A pointer to an animation object that contains an animation variable whose value has changed.</param>
<param name="variable">A pointer to an animation variable.</param>
<param name="newValue">Specifies new value.</param>
<param name="prevValue">Specifies previous value.</param>
</member>
<member name="M:CAnimationController.OnStoryboardStatusChanged(CAnimationGroup*,__MIDL___MIDL_itf_UIAnimation_0000_0002_0001,__MIDL___MIDL_itf_UIAnimation_0000_0002_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2580">
<summary>
Called by the framework when storyboard status has changed.
</summary>
<remarks>
This method is called if you enable storyboard events using CAnimationController::EnableStoryboardEventHandler.
It can be overridden in a derived class to take application-specific actions.
</remarks>
<param name="pGroup">A pointer to an animation group that owns the storyboard whose status has changed.</param>
<param name="newStatus">Specifies the new status.</param>
<param name="previousStatus">Specifies the previous status.</param>
</member>
<member name="M:CAnimationController.OnStoryboardUpdated(CAnimationGroup*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2592">
<summary>
Called by the framework when storyboard has been updated.
</summary>
<remarks>
This method is called if you enable storyboard events using CAnimationController::EnableStoryboardEventHandler.
It can be overridden in a derived class to take application-specific actions.
</remarks>
<param name="pGroup">A pointer to a group that owns the storyboard.</param>
</member>
<member name="M:CAnimationController.OnHasPriorityCancel(CAnimationGroup*,CAnimationGroup*,__MIDL___MIDL_itf_UIAnimation_0000_0008_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2602">
<summary>
Called by the framework to resolve scheduling conflicts.
</summary>
<returns>
Should return TRUE if storyboard owned by pGroupNew has priority. Should return FALSE if storyboard owned by
pGroupScheduled has priority.
</returns>
<remarks>
This method is called if you enable priority comparison events using CAnimationController::EnablePriorityComparisonHandler
and specify UI_ANIMATION_PHT_CANCEL.
It can be overridden in a derived class to take application-specific actions.
Read Windows Animation API documentation for more information about Conflict Management (http://msdn.microsoft.com/en-us/library/dd371759(VS.85).aspx).
</remarks>
<param name="pGroupScheduled">The group that owns the currently scheduled storyboard.</param>
<param name="pGroupNew">The group that owns the new storyboard that is in scheduling conflict with the scheduled storyboard owned by pGroupScheduled.</param>
<param name="priorityEffect">The potential effect on pGroupNew if pGroupScheduled has a higher priority.</param>
</member>
<member name="M:CAnimationController.OnHasPriorityConclude(CAnimationGroup*,CAnimationGroup*,__MIDL___MIDL_itf_UIAnimation_0000_0008_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2620">
<summary>
Called by the framework to resolve scheduling conflicts.
</summary>
<returns>
Should return TRUE if storyboard owned by pGroupNew has priority. Should return FALSE if storyboard owned by
pGroupScheduled has priority.
</returns>
<remarks>
This method is called if you enable priority comparison events using CAnimationController::EnablePriorityComparisonHandler
and specify UI_ANIMATION_PHT_CONCLUDE.
It can be overridden in a derived class to take application-specific actions.
Read Windows Animation API documentation for more information about Conflict Management (http://msdn.microsoft.com/en-us/library/dd371759(VS.85).aspx).
</remarks>
<param name="pGroupScheduled">The group that owns the currently scheduled storyboard.</param>
<param name="pGroupNew">The group that owns the new storyboard that is in scheduling conflict with the scheduled storyboard owned by pGroupScheduled.</param>
<param name="priorityEffect">The potential effect on pGroupNew if pGroupScheduled has a higher priority.</param>
</member>
<member name="M:CAnimationController.OnHasPriorityTrim(CAnimationGroup*,CAnimationGroup*,__MIDL___MIDL_itf_UIAnimation_0000_0008_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2638">
<summary>
Called by the framework to resolve scheduling conflicts.
</summary>
<returns>
Should return TRUE if storyboard owned by pGroupNew has priority. Should return FALSE if storyboard owned by
pGroupScheduled has priority.
</returns>
<remarks>
This method is called if you enable priority comparison events using CAnimationController::EnablePriorityComparisonHandler
and specify UI_ANIMATION_PHT_TRIM.
It can be overridden in a derived class to take application-specific actions.
Read Windows Animation API documentation for more information about Conflict Management (http://msdn.microsoft.com/en-us/library/dd371759(VS.85).aspx).
</remarks>
<param name="pGroupScheduled">The group that owns the currently scheduled storyboard.</param>
<param name="pGroupNew">The group that owns the new storyboard that is in scheduling conflict with the scheduled storyboard owned by pGroupScheduled.</param>
<param name="priorityEffect">The potential effect on pGroupNew if pGroupScheduled has a higher priority.</param>
</member>
<member name="M:CAnimationController.OnHasPriorityCompress(CAnimationGroup*,CAnimationGroup*,__MIDL___MIDL_itf_UIAnimation_0000_0008_0001)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2656">
<summary>
Called by the framework to resolve scheduling conflicts.
</summary>
<returns>
Should return TRUE if storyboard owned by pGroupNew has priority. Should return FALSE if storyboard owned by
pGroupScheduled has priority.
</returns>
<remarks>
This method is called if you enable priority comparison events using CAnimationController::EnablePriorityComparisonHandler
and specify UI_ANIMATION_PHT_COMPRESS.
It can be overridden in a derived class to take application-specific actions.
Read Windows Animation API documentation for more information about Conflict Management (http://msdn.microsoft.com/en-us/library/dd371759(VS.85).aspx).
</remarks>
<param name="pGroupScheduled">The group that owns the currently scheduled storyboard.</param>
<param name="pGroupNew">The group that owns the new storyboard that is in scheduling conflict with the scheduled storyboard owned by pGroupScheduled.</param>
<param name="priorityEffect">The potential effect on pGroupNew if pGroupScheduled has a higher priority.</param>
</member>
<member name="M:CAnimationController.OnAnimationTimerPreUpdate" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2674">
<summary>
Called by the framework before an animation update begins.
</summary>
<remarks>
This method is called if you enable timer event handlers using EnableAnimationTimerEventHandler.
It can be overridden in a derived class to take application-specific actions.
</remarks>
</member>
<member name="M:CAnimationController.OnAnimationTimerPostUpdate" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2683">
<summary>
Called by the framework after an animation update is finished.
</summary>
<remarks>
This method is called if you enable timer event handlers using EnableAnimationTimerEventHandler.
It can be overridden in a derived class to take application-specific actions.
</remarks>
</member>
<member name="M:CAnimationController.OnAnimationTimerRenderingTooSlow(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2692">
<summary>
Called by the framework when the rendering frame rate for an animation falls below a minimum desirable frame rate.
</summary>
<remarks>
This method is called if you enable timer event handlers using EnableAnimationTimerEventHandler.
It can be overridden in a derived class to take application-specific actions.
The minimum desirable frame rate is specified by calling IUIAnimationTimer::SetFrameRateThreshold.
</remarks>
<param name="fps">The current frame rate in frames per second. </param>
</member>
<member name="M:CAnimationController.OnAfterSchedule(CAnimationGroup*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2705">
<summary>
Called by the framework when an animation for the specified group has just been scheduled.
</summary>
<remarks>
The default implementation removes keyframes from the specified group and transitions from animation variables that
belong to the specified group. Can be overridden in a derived class to take any additional actions upon animation schedule.
</remarks>
<param name="pGroup">A pointer to an animation group, which has been scheduled.</param>
</member>
<member name="M:CAnimationController.CleanUpGroup(CAnimationGroup*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2715">
<summary>
A helper that cleans up the group.
</summary>
<remarks>
This method removes all transitions and keyframes from the specified group.
</remarks>
<param name="pGroup">A pointer to animation group to clean.</param>
</member>
<member name="T:CAnimationManagerEventHandler" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2728">
<summary>
Implements a callback, which is called by Animation API when a status of animation manager changed.
</summary>
<remarks>
This event handler is created and passed to IUIAnimationManager::SetManagerEventHandler method,
when you call CAnimationController::EnableAnimationManagerEvent.
</remarks>
</member>
<member name="M:CAnimationManagerEventHandler.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2740">
<summary>
Constructs a CAnimationManagerEventHandler object.
</summary>
</member>
<member name="M:CAnimationManagerEventHandler.CreateInstance(CAnimationController*,IUIAnimationManagerEventHandler**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2747">
<summary>
Creates an instance of CAnimationManagerEventHandler object.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
<param name="ppManagerEventHandler">Output. If the method succeeds it contains a pointer to COM object that will handle
status updates to an animation manager.</param>
</member>
<member name="M:CAnimationManagerEventHandler.SetAnimationController(CAnimationController*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2768">
<summary>
Stores a pointer to animation controller to route events.
</summary>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
</member>
<member name="M:CAnimationManagerEventHandler.OnManagerStatusChanged(__MIDL___MIDL_itf_UIAnimation_0000_0000_0002,__MIDL___MIDL_itf_UIAnimation_0000_0000_0002)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2777">
<summary>
Called when a status of animation manager has changed.
</summary>
<returns>
Current implementation always returns S_OK;
</returns>
<param name="newStatus">New status.</param>
<param name="previousStatus">Previous status.</param>
</member>
<member name="T:CAnimationVariableChangeHandler" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2796">
<summary>
Implements a call back, which is called by Animation API when the value of an animation variable changes.
</summary>
<remarks>
This event handler is created and passed to IUIAnimationVariable::SetVariableChangeHandler method,
when you call CAnimationVariable::EnableValueChangedEvent or CAnimationBaseObject::EnableValueChangedEvent
(which enables this event for all animation variables encapsulated in an animation object).
</remarks>
</member>
<member name="M:CAnimationVariableChangeHandler.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2810">
<summary>
Constructs a CAnimationVariableChangeHandler object.
</summary>
</member>
<member name="M:CAnimationVariableChangeHandler.CreateInstance(CAnimationController*,IUIAnimationVariableChangeHandler**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2817">
<summary>
Creates an instance of CAnimationVariableChangeHandler object.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
<param name="ppHandler">Output. If the method succeeds it contains a pointer to COM object that will handle
variable change events.</param>
</member>
<member name="M:CAnimationVariableChangeHandler.SetAnimationController(CAnimationController*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2838">
<summary>
Stores a pointer to animation controller to route events.
</summary>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
</member>
<member name="M:CAnimationVariableChangeHandler.OnValueChanged(IUIAnimationStoryboard*,IUIAnimationVariable*,System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2847">
<summary>
Called when a value of an animation variable has changed.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="storyboard">The storyboard that is animating the variable.</param>
<param name="variable">The animation variable that was updated.</param>
<param name="newValue">The new value.</param>
<param name="previousValue">The previous value.</param>
</member>
<member name="T:CAnimationVariableIntegerChangeHandler" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2906">
<summary>
Implements a call back, which is called by Animation API when the value of an animation variable changes.
</summary>
<remarks>
This event handler is created and passed to IUIAnimationVariable::SetVariableIntegerChangeHandler method,
when you call CAnimationVariable::EnableIntegerValueChangedEvent or CAnimationBaseObject::EnableIntegerValueChangedEvent
(which enables this event for all animation variables encapsulated in an animation object).
</remarks>
</member>
<member name="M:CAnimationVariableIntegerChangeHandler.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2919">
<summary>
Constructs a CAnimationVariableIntegerChangeHandler object.
</summary>
</member>
<member name="M:CAnimationVariableIntegerChangeHandler.CreateInstance(CAnimationController*,IUIAnimationVariableIntegerChangeHandler**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2926">
<summary>
Creates an instance of CAnimationVariableIntegerChangeHandler callback.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
<param name="ppHandler">Output. If the method succeeds it contains a pointer to COM object that will handle
variable integer change events.</param>
</member>
<member name="M:CAnimationVariableIntegerChangeHandler.SetAnimationController(CAnimationController*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2947">
<summary>
Stores a pointer to animation controller to route events.
</summary>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
</member>
<member name="M:CAnimationVariableIntegerChangeHandler.OnIntegerValueChanged(IUIAnimationStoryboard*,IUIAnimationVariable*,System.Int32,System.Int32)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="2956">
<summary>
Called when a value of an animation variable has changed.
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
<param name="storyboard">The storyboard that is animating the variable.</param>
<param name="variable">The animation variable that was updated.</param>
<param name="newValue">The new rounded value.</param>
<param name="previousValue">The previous rounded value.</param>
</member>
<member name="T:CAnimationStoryboardEventHandler" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3015">
<summary>
Implements a callback, which is called by Animation API when storyboard's status is changed or storyboard is updated.
</summary>
<remarks>
This event handler is created and passed to IUIAnimationStoryboard::SetStoryboardEventHandler method,
when you call CAnimationController::EnableStoryboardEventHandler.
</remarks>
</member>
<member name="M:CAnimationStoryboardEventHandler.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3026">
<summary>
Constructs a CAnimationStoryboardEventHandler object.
</summary>
</member>
<member name="M:CAnimationStoryboardEventHandler.CreateInstance(CAnimationController*,IUIAnimationStoryboardEventHandler**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3033">
<summary>
Creates an instance of CAnimationStoryboardEventHandler callback.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
<param name="ppHandler">Output. If the method succeeds it contains a pointer to COM object that will handle
storyboard events.</param>
</member>
<member name="M:CAnimationStoryboardEventHandler.SetAnimationController(CAnimationController*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3054">
<summary>
Stores a pointer to animation controller to route events.
</summary>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
</member>
<member name="M:CAnimationStoryboardEventHandler.OnStoryboardStatusChanged(IUIAnimationStoryboard*,__MIDL___MIDL_itf_UIAnimation_0000_0002_0001,__MIDL___MIDL_itf_UIAnimation_0000_0002_0001)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3063">
<summary>
Handles OnStoryboardStatusChanged events, which occur when a storyboard's status changes
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
<param name="storyboard">A pointer to storyboard whose status has changed.</param>
<param name="newStatus">Specifies new storyboard status.</param>
<param name="previousStatus">Specifies previous storyboard status.</param>
</member>
<member name="M:CAnimationStoryboardEventHandler.OnStoryboardUpdated(IUIAnimationStoryboard*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3095">
<summary>
Handles OnStoryboardUpdated events, which occur when a storyboard is updated
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
<param name="storyboard">A pointer to storyboard, which was updated.</param>
</member>
<member name="T:CAnimationTimerEventHandler" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3245">
<summary>
Implements a call back, which is called by Animation API when timing events occur.
</summary>
<remarks>
This event handler is created and passed to IUIAnimationTimer::SetTimerEventHandler when you call
CAnimationController::EnableAnimationTimerEventHandler.
</remarks>
</member>
<member name="M:CAnimationTimerEventHandler.CreateInstance(CAnimationController*,IUIAnimationTimerEventHandler**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3257">
<summary>
Creates an instance of CAnimationTimerEventHandler callback.
</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
</returns>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
<param name="ppTimerEventHandler">Output. If the method succeeds it contains a pointer to COM object that will handle
animation timer events.</param>
</member>
<member name="M:CAnimationTimerEventHandler.SetAnimationController(CAnimationController*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3279">
<summary>
Stores a pointer to animation controller to route events.
</summary>
<param name="pAnimationController">A pointer to animation controller, which will receive events.</param>
</member>
<member name="M:CAnimationTimerEventHandler.OnPreUpdate" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3288">
<summary>
Handles events that occur before an animation update begins.
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
</member>
<member name="M:CAnimationTimerEventHandler.OnPostUpdate" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3306">
<summary>
Handles events that occur after an animation update is finished.
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
</member>
<member name="M:CAnimationTimerEventHandler.OnRenderingTooSlow(System.UInt32)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3324">
<summary>
Handles events that occur when the rendering frame rate for an animation falls below the minimum desirable frame rate.
</summary>
<returns>
S_OK if the method succeeds; otherwise E_FAIL.
</returns>
</member>
<member name="T:CAccelerateDecelerateTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3346">
<summary>
Implements an accelerate-decelerate transition.
</summary>
<remarks>
During an accelerate-decelerate transition, the animation variable speeds up and then slows down over the
duration of the transition, ending at a specified value. You can control how quickly the variable accelerates and
decelerates independently, by specifying different acceleration and deceleration ratios.
When the initial velocity is zero, the acceleration ratio is the fraction of the duration that the variable will
spend accelerating; likewise with the deceleration ratio. If the initial velocity is non-zero, it is the
fraction of the time between the velocity reaching zero and the end of transition. The acceleration ratio and
the deceleration ratio should sum to a maximum of 1.0.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CAccelerateDecelerateTransition.#ctor(System.Double,System.Double,System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3364">
<summary>
Constructs a transition object.
</summary>
<param name="duration">The duration of the transition. </param>
<param name="finalValue">The value of the animation variable at the end of the transition. </param>
<param name="accelerationRatio">The ratio of the time spent accelerating to the duration.</param>
<param name="decelerationRatio">The ratio of the time spent decelerating to the duration. </param>
</member>
<member name="F:CAccelerateDecelerateTransition.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3379">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CAccelerateDecelerateTransition.m_finalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3384">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="F:CAccelerateDecelerateTransition.m_accelerationRatio" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3389">
<summary>
The ratio of the time spent accelerating to the duration.
</summary>
</member>
<member name="F:CAccelerateDecelerateTransition.m_decelerationRatio" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3394">
<summary>
The ratio of the time spent decelerating to the duration.
</summary>
</member>
<member name="M:CAccelerateDecelerateTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3399">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CConstantTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3423">
<summary>
Encapsulates a constant transition.
</summary>
<remarks>
During a constant transition, the value of an animation variable remains at the initial value over the duration
of the transition.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CConstantTransition.#ctor(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3436">
<summary>
Constructs a transition object and initializes its duration.
</summary>
<param name="duration">The duration of the transition. </param>
</member>
<member name="F:CConstantTransition.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3445">
<summary>
The duration of the transition.
</summary>
</member>
<member name="M:CConstantTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3450">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CCubicTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3473">
<summary>
Encapsulates a cubic transition.
</summary>
<remarks>
During a cubic transition, the value of the animation variable changes from its initial value to a specified
final value over the duration of the transition, ending at a specified velocity.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CCubicTransition.#ctor(System.Double,System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3486">
<summary>
Constructs a transition object and initializes its parameters.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="finalValue">The value of the animation variable at the end of the transition.</param>
<param name="finalVelocity">The velocity of the variable at the end of the transition.</param>
</member>
<member name="F:CCubicTransition.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3498">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CCubicTransition.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3503">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="F:CCubicTransition.m_dblFinalVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3508">
<summary>
The velocity of the variable at the end of the transition.
</summary>
</member>
<member name="M:CCubicTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3513">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CDiscreteTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3536">
<summary>
Encapsulates a discrete transition.
</summary>
<remarks>
During a discrete transition, the animation variable remains at the initial value for a specified delay time,
then switches instantaneously to a specified final value and remains at that value for a given hold time.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CDiscreteTransition.#ctor(System.Double,System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3549">
<summary>
Constructs a discrete transition object and initializes its parameters.
</summary>
<param name="delay">The amount of time by which to delay the instantaneous switch to the final value.</param>
<param name="dblFinalValue">The value of the animation variable at the end of the transition. </param>
<param name="hold">The amount of time by which to hold the variable at its final value.</param>
</member>
<member name="F:CDiscreteTransition.m_delay" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3561">
<summary>
The amount of time by which to delay the instantaneous switch to the final value.
</summary>
</member>
<member name="F:CDiscreteTransition.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3566">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="F:CDiscreteTransition.m_hold" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3571">
<summary>
The amount of time by which to hold the variable at its final value.
</summary>
</member>
<member name="M:CDiscreteTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3576">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CInstantaneousTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3599">
<summary>
Encapsulates an instantaneous transition.
</summary>
<remarks>
During an instantaneous transition, the value of the animation variable changes instantly from its current
value to a specified final value. The duration of this transition is always zero.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CInstantaneousTransition.#ctor(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3612">
<summary>
Constructs a transition object and initializes its final value.
</summary>
<param name="dblFinalValue">The value of the animation variable at the end of the transition.</param>
</member>
<member name="F:CInstantaneousTransition.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3621">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="M:CInstantaneousTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3626">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CLinearTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3649">
<summary>
Encapsulates a linear transition.
</summary>
<remarks>
During a linear transition, the value of the animation variable transitions linearly from its initial value to a specified final value.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CLinearTransition.#ctor(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3661">
<summary>
Constructs a linear transition object and initializes it with duration and final value.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="dblFinalValue">The value of the animation variable at the end of the transition.</param>
</member>
<member name="F:CLinearTransition.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3671">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CLinearTransition.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3676">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="M:CLinearTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3681">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CLinearTransitionFromSpeed" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3704">
<summary>
Encapsulates a linear-speed transition.
</summary>
<remarks>
During a linear-speed transition, the value of the animation variable changes at a specified rate.
The duration of the transition is determined by the difference between the initial value and the specified final value.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CLinearTransitionFromSpeed.#ctor(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3717">
<summary>
Constructs a linear-speed transition object and initializes it with speed and final value.
</summary>
<param name="dblSpeed">The absolute value of the variable's velocity.</param>
<param name="dblFinalValue">The value of the animation variable at the end of the transition.</param>
</member>
<member name="F:CLinearTransitionFromSpeed.m_dblSpeed" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3727">
<summary>
The absolute value of the variable's velocity.
</summary>
</member>
<member name="F:CLinearTransitionFromSpeed.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3732">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="M:CLinearTransitionFromSpeed.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3737">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CSmoothStopTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3760">
<summary>
Encapsulates a smooth-stop transition.
</summary>
<remarks>
A smooth-stop transition slows down as it approaches a given final value, and reaches it with a velocity of zero.
The duration of the transition is determined by the initial velocity, the difference between the initial and final values,
and the specified maximum duration. If there is no solution consisting of a single parabolic arc,
this method creates a cubic transition.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CSmoothStopTransition.#ctor(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3775">
<summary>
Constructs a smooth-stop transition and initializes its maximum duration and final value.
</summary>
<param name="maximumDuration">The maximum duration of the transition.</param>
<param name="dblFinalValue">The value of the animation variable at the end of the transition.</param>
</member>
<member name="F:CSmoothStopTransition.m_maximumDuration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3786">
<summary>
The maximum duration of the transition.
</summary>
</member>
<member name="F:CSmoothStopTransition.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3791">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="M:CSmoothStopTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3796">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CParabolicTransitionFromAcceleration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3819">
<summary>
Encapsulates a parabolic-acceleration transition.
</summary>
<remarks>
During a parabolic-acceleration transition, the value of the animation variable changes from the initial value
to the final value ending at a specified velocity. You can control how quickly the variable reaches the final
value by specifying the rate of acceleration.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CParabolicTransitionFromAcceleration.#ctor(System.Double,System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3833">
<summary>
Constructs a parabolic-acceleration transition and initializes it with specified parameters.
</summary>
<param name="dblFinalValue">The value of the animation variable at the end of the transition. </param>
<param name="dblFinalVelocity">The velocity of the animation variable at the end of the transition. </param>
<param name="dblAcceleration">The acceleration of the animation variable during the transition.</param>
</member>
<member name="F:CParabolicTransitionFromAcceleration.m_dblFinalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3845">
<summary>
The value of the animation variable at the end of the transition.
</summary>
</member>
<member name="F:CParabolicTransitionFromAcceleration.m_dblFinalVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3850">
<summary>
The velocity of the animation variable at the end of the transition.
</summary>
</member>
<member name="F:CParabolicTransitionFromAcceleration.m_dblAcceleration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3855">
<summary>
The acceleration of the animation variable during the transition.
</summary>
</member>
<member name="M:CParabolicTransitionFromAcceleration.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3860">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CReversalTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3883">
<summary>
Encapsulates a reversal transition.
</summary>
<remarks>
A reversal transition smoothly changes direction over a given duration.
The final value will be the same as the initial value and the final velocity will be the negative of the initial velocity.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CReversalTransition.#ctor(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3896">
<summary>
Constructs a reversal transition object and initializes its duration.
</summary>
<param name="duration">The duration of the transition. </param>
</member>
<member name="F:CReversalTransition.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3905">
<summary>
The duration of the transition.
</summary>
</member>
<member name="M:CReversalTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3910">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CSinusoidalTransitionFromRange" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3933">
<summary>
Encapsulates a sinusoidal-range transition, with a given range of oscillation.
</summary>
<remarks>
The value of the animation variable fluctuates between the specified minimum and maximum values over the entire
duration of a sinusoidal-range transition. The slope parameter is used to disambiguate between the two possible
sine waves specified by the other parameters.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CSinusoidalTransitionFromRange.#ctor(System.Double,System.Double,System.Double,System.Double,__MIDL___MIDL_itf_UIAnimation_0000_0009_0001)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3947">
<summary>
Constructs a transition object.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="dblMinimumValue">The value of the animation variable at a trough of the sinusoidal wave.</param>
<param name="dblMaximumValue">The value of the animation variable at a peak of the sinusoidal wave.</param>
<param name="period">The period of oscillation of the sinusoidal wave in seconds. </param>
<param name="slope">The slope at the start of the transition. </param>
</member>
<member name="F:CSinusoidalTransitionFromRange.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3962">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CSinusoidalTransitionFromRange.m_dblMinimumValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3966">
<summary>
The value of the animation variable at a trough of the sinusoidal wave.
</summary>
</member>
<member name="F:CSinusoidalTransitionFromRange.m_dblMaximumValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3970">
<summary>
The value of the animation variable at a peak of the sinusoidal wave.
</summary>
</member>
<member name="F:CSinusoidalTransitionFromRange.m_period" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3974">
<summary>
The period of oscillation of the sinusoidal wave in seconds.
</summary>
</member>
<member name="F:CSinusoidalTransitionFromRange.m_slope" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3978">
<summary>
The slope at the start of the transition.
</summary>
</member>
<member name="M:CSinusoidalTransitionFromRange.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="3983">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CSinusoidalTransitionFromVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4007">
<summary>
Encapsulates a sinusoidal-velocity transition, with an amplitude determined by the animation variable's initial velocity..
</summary>
<remarks>
The value of the animation variable oscillates around the initial value over the entire duration of a
sinusoidal-range transition. The amplitude of the oscillation is determined by the animation variable's velocity
when the transition begins.
Because all transitions are cleared automatically, it's recommended to allocated them using operator new.
The encapsulated IUIAnimationTransition COM object is created by CAnimationController::AnimateGroup, until then
it's NULL. Changing member variables after creation of this COM object has no effect.
</remarks>
</member>
<member name="M:CSinusoidalTransitionFromVelocity.#ctor(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4021">
<summary>
Constructs a transition object.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="period">The period of oscillation of the sinusoidal wave in seconds. </param>
</member>
<member name="F:CSinusoidalTransitionFromVelocity.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4031">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CSinusoidalTransitionFromVelocity.m_period" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4035">
<summary>
The period of oscillation of the sinusoidal wave in seconds.
</summary>
</member>
<member name="M:CSinusoidalTransitionFromVelocity.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4040">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<returns>
TRUE if transition is created successfully; otherwise FALSE.
</returns>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CCustomInterpolator" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4066">
<summary>
Implements a basic interpolator.
</summary>
<remarks>
Derive a class from CCustomInterpolator and override all necessary methods in order to implement a custom
interpolation algorithm. A pointer to this class should be passed as a parameter to CCustomTransition.
</remarks>
</member>
<member name="F:CCustomInterpolator.m_duration" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4076">
<summary>
The duration of the transition.
</summary>
</member>
<member name="F:CCustomInterpolator.m_finalValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4081">
<summary>
The final value of a variable at the end of the transition.
</summary>
</member>
<member name="F:CCustomInterpolator.m_initialValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4086">
<summary>
The value of the variable at the start of the transition.
</summary>
</member>
<member name="F:CCustomInterpolator.m_initialVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4090">
<summary>
The velocity of the variable at the start of the transition.
</summary>
</member>
<member name="F:CCustomInterpolator.m_currentValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4095">
<summary>
The interpolated value.
</summary>
</member>
<member name="F:CCustomInterpolator.m_currentVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4099">
<summary>
The interpolated velocity.
</summary>
</member>
<member name="M:CCustomInterpolator.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4104">
<summary>
Constructs a custom interpolator object and sets all values to default 0.
</summary>
<remarks>
Use CCustomInterpolator::Init to initialize duration and final value later in the code.
</remarks>
</member>
<member name="M:CCustomInterpolator.#ctor(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4115">
<summary>
Constructs a custom interpolator object and initializes duration and velocity to specified values.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="finalValue"></param>
</member>
<member name="M:CCustomInterpolator.Init(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4125">
<summary>
Initializes duration and final value.
</summary>
<param name="duration">The duration of the transition.</param>
<param name="finalValue">The final value of a variable at the end of the transition.</param>
</member>
<member name="M:CCustomInterpolator.SetInitialValueAndVelocity(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4136">
<summary>
Sets the interpolator's initial value and velocity.
</summary>
<returns>
The basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="initialValue">The value of the variable at the start of the transition.</param>
<param name="initialVelocity">The velocity of the variable at the start of the transition.</param>
</member>
<member name="M:CCustomInterpolator.SetDuration(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4153">
<summary>
Sets the interpolator's duration.
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="duration">The duration of the transition.</param>
</member>
<member name="M:CCustomInterpolator.GetDuration(System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4166">
<summary>
Gets the interpolator's duration.
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="duration">Output. The duration of the transition, in seconds.</param>
</member>
<member name="M:CCustomInterpolator.GetFinalValue(System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4179">
<summary>
Gets the final value to which the interpolator leads.
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="value">Output. The final value of a variable at the end of the transition.</param>
</member>
<member name="M:CCustomInterpolator.InterpolateValue(System.Double,System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4192">
<summary>
Interpolates the value at a given offset.
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="offset">The offset from the start of the transition.
The offset is always greater than or equal to zero and less than the duration of the transition.
This method is not called if the duration of the transition is zero.</param>
<param name="value">Output. The interpolated value.</param>
</member>
<member name="M:CCustomInterpolator.InterpolateVelocity(System.Double,System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4210">
<summary>
Interpolates the velocity at a given offset
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="offset">The offset from the start of the transition.
The offset is always greater than or equal to zero and less than or equal to the duration of the transition.
This method is not called if the duration of the transition is zero. </param>
<param name="velocity">Output. The velocity of the variable at the offset.</param>
</member>
<member name="M:CCustomInterpolator.GetDependencies(__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*,__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*,__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4228">
<summary>
Gets the interpolator's dependencies.
</summary>
<returns>
Basic implementation always returns TRUE. Return FALSE from overridden implementation if you wish to fail the event.
</returns>
<param name="initialValueDependencies">Output. Aspects of the interpolator that depend on the initial value passed to SetInitialValueAndVelocity.</param>
<param name="initialVelocityDependencies">Output. Aspects of the interpolator that depend on the initial velocity passed to SetInitialValueAndVelocity.</param>
<param name="durationDependencies">Output. Aspects of the interpolator that depend on the duration passed to SetDuration.</param>
</member>
<member name="T:CInterpolatorBase" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4247">
<summary>
Implements a callback, which is called by Animation API when it needs to calculate a new value of animation variable.
</summary>
<remarks>
This handler is created and passed to IUIAnimationTransitionFactory::CreateTransition when a CCustomTransition
object is being created as a part of animation initialization process (started by CAnimationController::AnimateGroup).
Usually you don't need to use this class directly, it just routs all events to a CCustomInterpolator-derived class, whose
pointer is passed to constructor of CCustomTransition.
</remarks>
</member>
<member name="M:CInterpolatorBase.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4260">
<summary>
Constructs the CInterpolatorBase object.
</summary>
</member>
<member name="M:CInterpolatorBase.SetCustomInterpolator(CCustomInterpolator*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4267">
<summary>
Stores  a pointer to custom interpolator, which will be handling events.
</summary>
<param name="pInterpolator">A pointer to custom interpolator.</param>
</member>
<member name="M:CInterpolatorBase.CreateInstance(CCustomInterpolator*,IUIAnimationInterpolator**)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4276">
<summary>
Creates an instance of CInterpolatorBase and stores a pointer to custom interpolator, which will be handling events.
</summary>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.
<param name="pInterpolator">A pointer to custom interpolator.</param>
<param name="ppHandler">Output. Contains a pointer to instance of CInterpolatorBase when the function returns.</param>
</member>
<member name="M:CInterpolatorBase.SetInitialValueAndVelocity(System.Double,System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4295">
<summary>
Sets the interpolator's initial value and velocity.
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the SetInitialValueAndVelocity method.
</returns>
<param name="initialValue">The value of the variable at the start of the transition.</param>
<param name="initialVelocity">The velocity of the variable at the start of the transition.</param>
</member>
<member name="M:CInterpolatorBase.SetDuration(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4313">
<summary>
Sets the interpolator's duration
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the SetDuration method.
</returns>
<param name="duration">The duration of the transition.</param>
</member>
<member name="M:CInterpolatorBase.GetDuration(System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4330">
<summary>
Gets the interpolator's duration.
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the GetDuration method.
</returns>
<param name="duration">Output. The duration of the transition, in seconds.</param>
</member>
<member name="M:CInterpolatorBase.GetFinalValue(System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4347">
<summary>
Gets the final value to which the interpolator leads.
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the GetFinalValue method.
</returns>
<param name="value">Output. The final value of a variable at the end of the transition.</param>
</member>
<member name="M:CInterpolatorBase.InterpolateValue(System.Double,System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4364">
<summary>
Interpolates the value at a given offset
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the InterpolateValue method.
</returns>
<param name="offset">The offset from the start of the transition.
The offset is always greater than or equal to zero and less than the duration of the transition.
This method is not called if the duration of the transition is zero.</param>
<param name="value">Output. The interpolated value.</param>
</member>
<member name="M:CInterpolatorBase.InterpolateVelocity(System.Double,System.Double*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4384">
<summary>
Interpolates the velocity at a given offset
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the InterpolateVelocity method.
</returns>
<param name="offset">The offset from the start of the transition.
The offset is always greater than or equal to zero and less than or equal to the duration of the transition.
This method is not called if the duration of the transition is zero. </param>
<param name="velocity">Output. The velocity of the variable at the offset.</param>
</member>
<member name="M:CInterpolatorBase.GetDependencies(__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*,__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*,__MIDL___MIDL_itf_UIAnimation_0000_0010_0001*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4404">
<summary>
Gets the interpolator's dependencies.
</summary>
<returns>
If the method succeeds, it returns S_OK. It returns E_FAIL if CCustomInterpolator is not
set, or custom implementation returns FALSE from the GetDependencies method.
</returns>
<param name="initialValueDependencies">Output. Aspects of the interpolator that depend on the initial value passed to SetInitialValueAndVelocity.</param>
<param name="initialVelocityDependencies">Output. Aspects of the interpolator that depend on the initial velocity passed to SetInitialValueAndVelocity.</param>
<param name="durationDependencies">Output. Aspects of the interpolator that depend on the duration passed to SetDuration.</param>
</member>
<member name="T:CCustomTransition" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4425">
<summary>
Implements custom transition.
</summary>
<remarks>
The CCustomTransitions class allows developers to implement custom transitions. It's created and used
as a standard transition, but its constructor accepts as parameter a pointer to a custom interpolator.
Perform the following steps to use custom transitions:
1. Derive a class from CCustomInterpolator and implement at least InterpolateValue method.
2. Ensure that the lifetime of custom interpolator object must be longer than duration of animation where it's used.
3. Instantiate (using operator new) a CCustomTransition object and pass a pointer to custom interpolator in the constructor.
4. Call CCustomTransition::SetInitialValue and CCustomTransition::SetInitialVelocity if these parameters are required for custom interpolation.
5. Pass the pointer to custom transition to AddTransition method of animation object, whose value should be animated with the custom algorithm.
6. When the value of animation object should change Windows Animation API will call InterpolateValue (and other relevant methods) in CCustomInterpolator.
</remarks>
</member>
<member name="F:CCustomTransition.m_pInterpolator" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4442">
<summary>
Stores a pointer to a custom interpolator.
</summary>
</member>
<member name="F:CCustomTransition.m_bInitialValueSpecified" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4447">
<summary>
Specifies whether the initial value was specified with SetInitialValue.
</summary>
</member>
<member name="F:CCustomTransition.m_bInitialVelocitySpecified" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4451">
<summary>
Specifies whether the initial velocity was specified with SetInitialVelocity.
</summary>
</member>
<member name="F:CCustomTransition.m_initialValue" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4456">
<summary>
Stores the initial value.
</summary>
</member>
<member name="F:CCustomTransition.m_initialVelocity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4460">
<summary>
Stores the initial velocity.
</summary>
</member>
<member name="M:CCustomTransition.#ctor(CCustomInterpolator*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4465">
<summary>
Constructs a custom transition object.
</summary>
<param name="pInterpolator">A pointer to custom interpolator.</param>
</member>
<member name="M:CCustomTransition.SetInitialValue(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4479">
<summary>
Sets an initial value, which will be applied to an animation variable associated with this transition.
</summary>
</member>
<member name="M:CCustomTransition.SetInitialVelocity(System.Double)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4488">
<summary>
Sets an initial velocity, which will be applied to an animation variable associated with this transition.
</summary>
</member>
<member name="M:CCustomTransition.Create(IUIAnimationTransitionLibrary*,IUIAnimationTransitionFactory*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxanimationcontroller.h" line="4497">
<summary>
Calls the transition library to create encapsulated transition COM object.
</summary>
<remarks>
This method also can set initial value and initial velocity to be applied to an animation variable, which is
associated with this transition. For this purpose you have to call SetInitialValue and SetInitialVelocity before
the framework creates the encapsulated transition COM object (it happens when you call CAnimationController::AnimateGroup).
</remarks>
<param name="pLibrary">A pointer to transition library, which is responsible for creation of standard transitions.</param>
<param name="pFactory">A pointer to transition factory, which is responsible for creation of custom transitions.</param>
</member>
<member name="T:CD2DPointF" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="40">
<summary>
D2D1_POINT_2F wrapper
</summary>
</member>
<member name="M:CD2DPointF.#ctor(CPoint!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="46">
<summary>
Constructs a CD2DPointF object from CPoint object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointF.#ctor(D2D_POINT_2F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="51">
<summary>
Constructs a CD2DPointF object from D2D1_POINT_2F object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointF.#ctor(D2D_POINT_2F!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="56">
<summary>
Constructs a CD2DPointF object from D2D1_POINT_2F object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointF.#ctor(System.Single,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="61">
<summary>
Constructs a CD2DPointF object from two FLOAT values.</summary>
<param name="fX">source X</param>
<param name="fY">source Y</param>
</member>
<member name="M:CD2DPointF.op_Implicit~CPoint" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="67">
<summary>
Converts CD2DPointF to CPoint object.</summary>
<returns>
Current value of D2D point.
</returns>
</member>
<member name="T:CD2DPointU" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="75">
<summary>
D2D1_POINT_2U wrapper
</summary>
</member>
<member name="M:CD2DPointU.#ctor(CPoint!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="81">
<summary>
Constructs a CD2DPointU object from CPoint object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointU.#ctor(D2D_POINT_2U!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="86">
<summary>
Constructs a CD2DPointU from object D2D1_POINT_2U object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointU.#ctor(D2D_POINT_2U!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="91">
<summary>
Constructs a CD2DPointU from object D2D1_POINT_2U object.</summary>
<param name="pt">source point</param>
</member>
<member name="M:CD2DPointU.#ctor(System.UInt32,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="96">
<summary>
Constructs a CD2DPointU object from two UINT32 values.</summary>
<param name="uX">source X</param>
<param name="uY">source Y</param>
</member>
<member name="M:CD2DPointU.op_Implicit~CPoint" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="102">
<summary>
Converts CD2DPointU to CPoint object.</summary>
<returns>
Current value of D2D point.
</returns>
</member>
<member name="T:CD2DSizeF" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="110">
<summary>
D2D1_SIZE_F wrapper
</summary>
</member>
<member name="M:CD2DSizeF.#ctor(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="116">
<summary>
Constructs a CD2DSizeF object from CSize object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeF.#ctor(D2D_SIZE_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="121">
<summary>
Constructs a CD2DSizeF object from D2D1_SIZE_F object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeF.#ctor(D2D_SIZE_F!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="126">
<summary>
Constructs a CD2DSizeF object from D2D1_SIZE_F object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeF.#ctor(System.Single,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="131">
<summary>
Constructs a CD2DSizeF object from two FLOAT values.</summary>
<param name="cx">source width</param>
<param name="cy">source height</param>
</member>
<member name="M:CD2DSizeF.IsNull" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="137">
<summary>
Returns a Boolean value that indicates whether an expression contains no valid data (Null).</summary>
<returns>
TRUE if width and height are empty; otherwise FALSE.
</returns>
</member>
<member name="M:CD2DSizeF.op_Implicit~CSize" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="144">
<summary>
Converts CD2DSizeF to CSize object.</summary>
<returns>
Current value of D2D size.
</returns>
</member>
<member name="T:CD2DSizeU" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="152">
<summary>
D2D1_SIZE_U wrapper
</summary>
</member>
<member name="M:CD2DSizeU.#ctor(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="158">
<summary>
Constructs a CD2DSizeU object from CSize object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeU.#ctor(D2D_SIZE_U!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="163">
<summary>
Constructs a CD2DSizeU object from D2D1_SIZE_U object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeU.#ctor(D2D_SIZE_U!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="168">
<summary>
Constructs a CD2DSizeU object from D2D1_SIZE_U object.</summary>
<param name="size">source size</param>
</member>
<member name="M:CD2DSizeU.#ctor(System.UInt32,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="173">
<summary>
Constructs a CD2DSizeU object from two UINT32 values.</summary>
<param name="cx">source width</param>
<param name="cy">source height</param>
</member>
<member name="M:CD2DSizeU.IsNull" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="179">
<summary>
Returns a Boolean value that indicates whether an expression contains no valid data (Null).</summary>
<returns>
TRUE if width and height are empty; otherwise FALSE.
</returns>
</member>
<member name="M:CD2DSizeU.op_Implicit~CSize" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="186">
<summary>
Converts CD2DSizeU to CSize object.</summary>
<returns>
Current value of D2D size.
</returns>
</member>
<member name="T:CD2DRectF" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="194">
<summary>
D2D1_RECT_F wrapper
</summary>
</member>
<member name="M:CD2DRectF.#ctor(CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="200">
<summary>
Constructs a CD2DRectF object from CRect object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectF.#ctor(D2D_RECT_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="205">
<summary>
Constructs a CD2DRectF object from D2D1_RECT_F object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectF.#ctor(D2D_RECT_F!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="210">
<summary>
Constructs a CD2DRectF object from D2D1_RECT_F object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectF.#ctor(System.Single,System.Single,System.Single,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="215">
<summary>
Constructs a CD2DRectF object from four FLOAT values.</summary>
<param name="fLeft">source left coordinate</param>
<param name="fTop">source top coordinate</param>
<param name="fRight">source right coordinate</param>
<param name="fBottom">source bottom coordinate</param>
</member>
<member name="M:CD2DRectF.IsNull" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="223">
<summary>
Returns a Boolean value that indicates whether an expression contains no valid data (Null).</summary>
<returns>
TRUE if rectangle's top, left, bottom, and right values are all equal to 0; otherwise FALSE.
</returns>
</member>
<member name="M:CD2DRectF.op_Implicit~CRect" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="230">
<summary>
Converts CD2DRectF to CRect object.</summary>
<returns>
Current value of D2D rectangle.
</returns>
</member>
<member name="T:CD2DRectU" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="238">
<summary>
D2D1_RECT_U wrapper
</summary>
</member>
<member name="M:CD2DRectU.#ctor(CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="244">
<summary>
Constructs a CD2DRectU object from CRect object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectU.#ctor(D2D_RECT_U!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="249">
<summary>
Constructs a CD2DRectU object from D2D1_RECT_U object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectU.#ctor(D2D_RECT_U!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="254">
<summary>
Constructs a CD2DRectU object from D2D1_RECT_U object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DRectU.#ctor(System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="259">
<summary>
Constructs a CD2DRectU object from four UINT32 values.</summary>
<param name="uLeft">source left coordinate</param>
<param name="uTop">source top coordinate</param>
<param name="uRight">source right coordinate</param>
<param name="uBottom">source bottom coordinate</param>
</member>
<member name="M:CD2DRectU.IsNull" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="267">
<summary>
Returns a Boolean value that indicates whether an expression contains no valid data (Null).</summary>
<returns>
TRUE if rectangle's top, left, bottom, and right values are all equal to 0; otherwise FALSE.
</returns>
</member>
<member name="M:CD2DRectU.op_Implicit~CRect" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="274">
<summary>
Converts CD2DRectU to CRect object.</summary>
<returns>
Current value of D2D rectangle.
</returns>
</member>
<member name="T:CD2DRoundedRect" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="282">
<summary>
D2D1_ROUNDED_RECT wrapper
</summary>
</member>
<member name="M:CD2DRoundedRect.#ctor(CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DSizeF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="288">
<summary>
Constructs a CD2DRoundedRect object from CD2DRectF object.</summary>
<param name="rectIn">source rectangle</param>
<param name="sizeRadius">radius size</param>
</member>
<member name="M:CD2DRoundedRect.#ctor(D2D1_ROUNDED_RECT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="294">
<summary>
Constructs a CD2DRoundedRect object from D2D1_ROUNDED_RECT object.</summary>
<param name="rectIn">source rectangle</param>
</member>
<member name="M:CD2DRoundedRect.#ctor(D2D1_ROUNDED_RECT!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="299">
<summary>
Constructs a CD2DRoundedRect object from D2D1_ROUNDED_RECT object.</summary>
<param name="rectIn">source rectangle</param>
</member>
<member name="T:CD2DEllipse" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="305">
<summary>
D2D1_ELLIPSE wrapper
</summary>
</member>
<member name="M:CD2DEllipse.#ctor(CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="311">
<summary>
Constructs a CD2DEllipse object from CD2DRectF object.</summary>
<param name="rect">source rectangle</param>
</member>
<member name="M:CD2DEllipse.#ctor(D2D1_ELLIPSE!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="316">
<summary>
Constructs a CD2DEllipse object from D2D1_ELLIPSE object.</summary>
<param name="ellipse">source ellipse</param>
</member>
<member name="M:CD2DEllipse.#ctor(D2D1_ELLIPSE!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="321">
<summary>
Constructs a CD2DEllipse object from D2D1_ELLIPSE object.</summary>
<param name="ellipse">source ellipse</param>
</member>
<member name="M:CD2DEllipse.#ctor(CD2DPointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DSizeF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="326">
<summary>
Constructs a CD2DEllipse from CD2DPointF and CD2DSizeF objects.</summary>
<param name="ptCenter">The center point of the ellipse.</param>
<param name="sizeRadius">The X-radius and Y-radius of the ellipse.</param>
</member>
<member name="T:CD2DResource" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="333">
<summary>
An abstract class, which provides a interface for creating and managing D2D resources such as brushes, layers and texts.
</summary>
</member>
<member name="M:CD2DResource.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="344">
<summary>
Constructs a CD2DResource object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DResource.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="350">
<summary>
The destructor. Called when a D2D resource object is being destroyed.
</summary>
</member>
<member name="M:CD2DResource.IsAutoDestroy" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="355">
<summary>
Check auto destroy flag.</summary>
<returns>
TRUE if the object will be destroyed by its owner; otherwise FALSE.</returns>
</member>
<member name="M:CD2DResource.ReCreate(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="361">
<summary>
Re-creates a CD2DResource.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DResource.Create(CRenderTarget*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="369">
<summary>
Creates a CD2DResource.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DResource.Destroy" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="376">
<summary>
Destroys a CD2DResource object.</summary>
</member>
<member name="M:CD2DResource.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="380">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="F:CD2DResource.m_bIsAutoDestroy" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="387">
<summary>
Resource will be destoyed by owner (CRenderTarget)</summary>
</member>
<member name="F:CD2DResource.m_pParentTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="391">
<summary>
Pointer to the parent CRenderTarget)</summary>
</member>
<member name="T:CD2DLayer" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="396">
<summary>
ID2D1Layer wrapper.
</summary>
</member>
<member name="M:CD2DLayer.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="404">
<summary>
Constructs a CD2DLayer object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DLayer.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="410">
<summary>
The destructor. Called when a D2D layer object is being destroyed.
</summary>
</member>
<member name="M:CD2DLayer.GetSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="415">
<summary>
Returns the size of the render target in device-independent pixels</summary>
<returns> 
The current size of the render target in device-independent pixels</returns>
</member>
<member name="M:CD2DLayer.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="421">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DLayer.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="427">
<summary>
Returns ID2D1Layer interface</summary>
<returns> 
Pointer to an ID2D1Layer interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DLayer.op_Implicit~ID2D1Layer*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="433">
<summary>
Returns ID2D1Layer interface</summary>
<returns> 
Pointer to an ID2D1Layer interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DLayer.Attach(ID2D1Layer*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="439">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DLayer.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="444">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DLayer.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="451">
<summary>
Creates a CD2DLayer.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DLayer.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="458">
<summary>
Destroys a CD2DLayer object.</summary>
</member>
<member name="F:CD2DLayer.m_pLayer" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="463">
<summary>
Stores a pointer to an ID2D1Layer object.
</summary>
</member>
<member name="T:CD2DBitmap" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="469">
<summary>
ID2D1Bitmap wrapper.
</summary>
</member>
<member name="M:CD2DBitmap.#ctor(CRenderTarget*,System.UInt32,System.Char!System.Runtime.CompilerServices.IsConst*,CD2DSizeU,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="481">
<summary>
Constructs a CD2DBitmap object from resource.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="uiResID">The resource ID number of the resource.</param>
<param name="lpszType">Pointer to a null-terminated string that contains the resource type.</param>
<param name="sizeDest">Destination size of the bitmap.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmap.#ctor(CRenderTarget*,System.Char!System.Runtime.CompilerServices.IsConst*,CD2DSizeU,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="490">
<summary>
Constructs a CD2DBitmap object from file.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="lpszPath">Pointer to a null-terminated string that contains the name of file.</param>
<param name="sizeDest">Destination size of the bitmap.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmap.#ctor(CRenderTarget*,HBITMAP__*,CD2DSizeU,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="498">
<summary>
Constructs a CD2DBitmap object from HBITMAP.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="hbmpSrc">Handle to the bitmap.</param>
<param name="sizeDest">Destination size of the bitmap.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmap.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="507">
<summary>
Constructs a CD2DBitmap object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmap.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="514">
<summary>
The destructor. Called when a D2D bitmap object is being destroyed.
</summary>
</member>
<member name="M:CD2DBitmap.Attach(ID2D1Bitmap*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="519">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DBitmap.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="524">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DBitmap.GetSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="530">
<summary>
Returns the size, in device-independent pixels (DIPs), of the bitmap</summary>
<returns> 
The size, in DIPs, of the bitmap.</returns>
</member>
<member name="M:CD2DBitmap.GetPixelSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="536">
<summary>
Returns the size, in device-dependent units (pixels), of the bitmap</summary>
<returns> 
The size, in pixels, of the bitmap..</returns>
</member>
<member name="M:CD2DBitmap.GetPixelFormat" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="542">
<summary>
Retrieves the pixel format and alpha mode of the bitmap</summary>
<returns> 
The pixel format and alpha mode of the bitmap.</returns>
</member>
<member name="M:CD2DBitmap.GetDPI" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="548">
<summary>
Return the dots per inch (DPI) of the bitmap</summary>
<returns> 
The horizontal and vertical DPI of the bitmap.</returns>
</member>
<member name="M:CD2DBitmap.CopyFromBitmap(CD2DBitmap!System.Runtime.CompilerServices.IsConst*,CD2DPointU!System.Runtime.CompilerServices.IsConst*,CD2DRectU!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="554">
<summary>
Copies the specified region from the specified bitmap into the current bitmap</summary>
<returns> 
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pBitmap">The bitmap to copy from</param>
<param name="destPoint">In the current bitmap, the upper-left corner of the area to which the region specified by srcRect is copied</param>
<param name="srcRect">The area of bitmap to copy</param>
</member>
<member name="M:CD2DBitmap.CopyFromRenderTarget(CRenderTarget!System.Runtime.CompilerServices.IsConst*,CD2DPointU!System.Runtime.CompilerServices.IsConst*,CD2DRectU!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="563">
<summary>
Copies the specified region from the specified render target into the current bitmap</summary>
<returns> 
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">The render target that contains the region to copy</param>
<param name="destPoint">In the current bitmap, the upper-left corner of the area to which the region specified by srcRect is copied</param>
<param name="srcRect">The area of renderTarget to copy</param>
</member>
<member name="M:CD2DBitmap.CopyFromMemory(System.Void!System.Runtime.CompilerServices.IsConst*,System.UInt32,CD2DRectU!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="572">
<summary>
Copies the specified region from memory into the current bitmap</summary>
<returns> 
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="srcData">The data to copy</param>
<param name="pitch">The stride, or pitch, of the source bitmap stored in srcData. The stride is the byte count of a scanline (one row of pixels in memory). The stride can be computed from the following formula: pixel width * bytes per pixel + memory padding</param>
<param name="destRect">In the current bitmap, the upper-left corner of the area to which the region specified by srcRect is copied</param>
</member>
<member name="M:CD2DBitmap.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="581">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DBitmap.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="587">
<summary>
Returns ID2D1Bitmap interface</summary>
<returns> 
Pointer to an ID2D1Bitmap interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBitmap.op_Implicit~ID2D1Bitmap*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="593">
<summary>
Returns ID2D1Bitmap interface</summary>
<returns> 
Pointer to an ID2D1Bitmap interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBitmap.CommonInit" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="600">
<summary>
Initializes the object</summary>
</member>
<member name="M:CD2DBitmap.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="605">
<summary>
Creates a CD2DBitmap.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DBitmap.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="612">
<summary>
Destroys a CD2DBitmap object.</summary>
</member>
<member name="F:CD2DBitmap.m_pBitmap" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="617">
<summary>
Stores a pointer to an ID2D1Bitmap object.
</summary>
</member>
<member name="F:CD2DBitmap.m_uiResID" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="622">
<summary>
Bitmap resource ID.
</summary>
</member>
<member name="F:CD2DBitmap.m_lpszType" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="627">
<summary>
Resource type.
</summary>
</member>
<member name="F:CD2DBitmap.m_strPath" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="632">
<summary>
Botmap file path.
</summary>
</member>
<member name="F:CD2DBitmap.m_sizeDest" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="637">
<summary>
Bitmap destination size.
</summary>
</member>
<member name="F:CD2DBitmap.m_hBmpSrc" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="642">
<summary>
Source bitmap handle.
</summary>
</member>
<member name="F:CD2DBitmap.m_bAutoDestroyHBMP" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="647">
<summary>
TRUE if m_hBmpSrc should be destroyed; otherwise FALSE.
</summary>
</member>
<member name="T:CD2DBrushProperties" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="653">
<summary>
D2D1_BRUSH_PROPERTIES wrapper.
</summary>
</member>
<member name="M:CD2DBrushProperties.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="659">
<summary>
Creates a CD2D_BRUSH_PROPERTIES structure</summary>
</member>
<member name="M:CD2DBrushProperties.#ctor(System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="663">
<summary>
Creates a CD2D_BRUSH_PROPERTIES structure</summary>
<param name="_opacity">The base opacity of the brush. The default value is 1.0.</param>
</member>
<member name="M:CD2DBrushProperties.#ctor(D2D_MATRIX_3X2_F,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="668">
<summary>
Creates a CD2D_BRUSH_PROPERTIES structure</summary>
<param name="_transform">The transformation to apply to the brush</param>
<param name="_opacity">The base opacity of the brush. The default value is 1.0.</param>
</member>
<member name="M:CD2DBrushProperties.CommonInit" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="675">
<summary>
Initializes the object</summary>
</member>
<member name="T:CD2DBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="680">
<summary>
ID2D1Brush wrapper.
</summary>
</member>
<member name="M:CD2DBrush.#ctor(CRenderTarget*,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="690">
<summary>
Constructs a CD2DBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="697">
<summary>
The destructor. Called when a D2D brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DBrush.Attach(ID2D1Brush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="703">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DBrush.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="708">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DBrush.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="714">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DBrush.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="720">
<summary>
Returns ID2D1Brush interface</summary>
<returns> 
Pointer to an ID2D1Brush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBrush.op_Implicit~ID2D1Brush*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="726">
<summary>
Returns ID2D1Brush interface</summary>
<returns> 
Pointer to an ID2D1Brush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="733">
<summary>
Destroys a CD2DBrush object.</summary>
</member>
<member name="M:CD2DBrush.SetOpacity(System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="737">
<summary>
Sets the degree of opacity of this brush</summary>
<param name="opacity">A value between zero and 1 that indicates the opacity of the brush. This value is a constant multiplier that linearly scales the alpha value of all pixels filled by the brush. The opacity values are clamped in the range 0 to 1 before they are multiplied together</param>
</member>
<member name="M:CD2DBrush.GetOpacity" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="742">
<summary>
Gets the degree of opacity of this brush</summary>
<returns> 
A value between zero and 1 that indicates the opacity of the brush. This value is a constant multiplier that linearly scales the alpha value of all pixels filled by the brush. The opacity values are clamped in the range 0 to 1 before they are multiplied together</returns>
</member>
<member name="M:CD2DBrush.SetTransform(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="748">
<summary>
Applies the specified transform to the render target, replacing the existing transformation. All subsequent drawing operations occur in the transformed space</summary>
<param name="transform">The transform to apply to the render target</param>
</member>
<member name="M:CD2DBrush.GetTransform(D2D_MATRIX_3X2_F*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="753">
<summary>
Gets the current transform of the render target</summary>
<param name="transform">When this returns, contains the current transform of the render target. This parameter is passed uninitialized</param>
</member>
<member name="F:CD2DBrush.m_pBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="759">
<summary>
Stores a pointer to an ID2D1Brush object.
</summary>
</member>
<member name="F:CD2DBrush.m_pBrushProperties" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="764">
<summary>
Brush properties.
</summary>
</member>
<member name="T:CD2DSolidColorBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="770">
<summary>
ID2D1SolidColorBrush wrapper.
</summary>
</member>
<member name="M:CD2DSolidColorBrush.#ctor(CRenderTarget*,_D3DCOLORVALUE,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="778">
<summary>
Constructs a CD2DSolidColorBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="color">The red, green, blue, and alpha values of the brush's color.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DSolidColorBrush.#ctor(CRenderTarget*,System.UInt32!System.Runtime.CompilerServices.IsLong,System.Int32,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="786">
<summary>
Constructs a CD2DSolidColorBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="color">The red, green, and blue values of the brush's color.</param>
<param name="nAlpha">The opacity of the brush's color.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DSolidColorBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="795">
<summary>
The destructor. Called when a D2D solid brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DSolidColorBrush.Attach(ID2D1SolidColorBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="801">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DSolidColorBrush.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="806">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DSolidColorBrush.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="812">
<summary>
Returns ID2D1SolidColorBrush interface</summary>
<returns> 
Pointer to an ID2D1SolidColorBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DSolidColorBrush.op_Implicit~ID2D1SolidColorBrush*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="818">
<summary>
Returns ID2D1SolidColorBrush interface</summary>
<returns> 
Pointer to an ID2D1SolidColorBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DSolidColorBrush.SetColor(_D3DCOLORVALUE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="824">
<summary>
Specifies the color of this solid color brush</summary>
<param name="color">The color of this solid color brush</param>
</member>
<member name="M:CD2DSolidColorBrush.GetColor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="829">
<summary>
Retrieves the color of the solid color brush</summary>
<returns> 
The color of this solid color brush</returns>
</member>
<member name="M:CD2DSolidColorBrush.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="836">
<summary>
Creates a CD2DSolidColorBrush.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DSolidColorBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="843">
<summary>
Destroys a CD2DSolidColorBrush object.</summary>
</member>
<member name="F:CD2DSolidColorBrush.m_pSolidColorBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="848">
<summary>
Stores a pointer to an ID2D1SolidColorBrush object.
</summary>
</member>
<member name="F:CD2DSolidColorBrush.m_colorSolid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="853">
<summary>
Brush solid color.
</summary>
</member>
<member name="T:CD2DBitmapBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="859">
<summary>
ID2D1BitmapBrush wrapper.
</summary>
</member>
<member name="M:CD2DBitmapBrush.#ctor(CRenderTarget*,D2D1_BITMAP_BRUSH_PROPERTIES*,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="867">
<summary>
Constructs a CD2DBitmapBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="pBitmapBrushProperties">A pointer to the extend modes and the interpolation mode of a bitmap brush.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmapBrush.#ctor(CRenderTarget*,System.UInt32,System.Char!System.Runtime.CompilerServices.IsConst*,CD2DSizeU,D2D1_BITMAP_BRUSH_PROPERTIES*,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="875">
<summary>
Constructs a CD2DBitmapBrush object from resource.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="uiResID">The resource ID number of the resource.</param>
<param name="lpszType">Pointer to a null-terminated string that contains the resource type.</param>
<param name="sizeDest">Destination size of the bitmap.</param>
<param name="pBitmapBrushProperties">A pointer to the extend modes and the interpolation mode of a bitmap brush.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmapBrush.#ctor(CRenderTarget*,System.Char!System.Runtime.CompilerServices.IsConst*,CD2DSizeU,D2D1_BITMAP_BRUSH_PROPERTIES*,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="886">
<summary>
Constructs a CD2DBitmapBrush object from file.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="lpszImagePath">Pointer to a null-terminated string that contains the name of file.</param>
<param name="sizeDest">Destination size of the bitmap.</param>
<param name="pBitmapBrushProperties">A pointer to the extend modes and the interpolation mode of a bitmap brush.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DBitmapBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="896">
<summary>
The destructor. Called when a D2D bitmap brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DBitmapBrush.Attach(ID2D1BitmapBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="901">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DBitmapBrush.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="906">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DBitmapBrush.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="912">
<summary>
Returns ID2D1BitmapBrush interface</summary>
<returns> 
Pointer to an ID2D1BitmapBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBitmapBrush.op_Implicit~ID2D1BitmapBrush*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="918">
<summary>
Returns ID2D1BitmapBrush interface</summary>
<returns> 
Pointer to an ID2D1BitmapBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBitmapBrush.GetBitmap" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="924">
<summary>
Gets the bitmap source that this brush uses to paint</summary>
<returns> 
Pointer to an CD2DBitmap object or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DBitmapBrush.SetExtendModeX(D2D1_EXTEND_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="934">
<summary>
Specifies how the brush horizontally tiles those areas that extend past its bitmap</summary>
<param name="extendModeX">A value that specifies how the brush horizontally tiles those areas that extend past its bitmap</param>
</member>
<member name="M:CD2DBitmapBrush.SetExtendModeY(D2D1_EXTEND_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="939">
<summary>
Specifies how the brush vertically tiles those areas that extend past its bitmap</summary>
<param name="extendModeY">A value that specifies how the brush vertically tiles those areas that extend past its bitmap</param>
</member>
<member name="M:CD2DBitmapBrush.SetInterpolationMode(D2D1_BITMAP_INTERPOLATION_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="944">
<summary>
Specifies the interpolation mode used when the brush bitmap is scaled or rotated</summary>
<param name="interpolationMode">The interpolation mode used when the brush bitmap is scaled or rotated</param>
</member>
<member name="M:CD2DBitmapBrush.SetBitmap(CD2DBitmap*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="949">
<summary>
Specifies the bitmap source that this brush uses to paint</summary>
<param name="pBitmap">The bitmap source used by the brush</param>
</member>
<member name="M:CD2DBitmapBrush.GetExtendModeX" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="954">
<summary>
Gets the method by which the brush horizontally tiles those areas that extend past its bitmap</summary>
<returns> 
A value that specifies how the brush horizontally tiles those areas that extend past its bitmap</returns>
</member>
<member name="M:CD2DBitmapBrush.GetExtendModeY" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="960">
<summary>
Gets the method by which the brush vertically tiles those areas that extend past its bitmap</summary>
<returns> 
A value that specifies how the brush vertically tiles those areas that extend past its bitmap</returns>
</member>
<member name="M:CD2DBitmapBrush.GetInterpolationMode" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="966">
<summary>
Gets the interpolation method used when the brush bitmap is scaled or rotated</summary>
<returns> 
The interpolation method used when the brush bitmap is scaled or rotated</returns>
</member>
<member name="M:CD2DBitmapBrush.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="973">
<summary>
Creates a CD2DBitmapBrush.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DBitmapBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="980">
<summary>
Destroys a CD2DBitmapBrush object.</summary>
</member>
<member name="M:CD2DBitmapBrush.CommonInit(D2D1_BITMAP_BRUSH_PROPERTIES*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="985">
<summary>
Initializes the object</summary>
<param name="pBitmapBrushProperties">A pointer to the bitmap brush properties.</param>
</member>
<member name="F:CD2DBitmapBrush.m_pBitmap" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="991">
<summary>
Stores a pointer to a CD2DBitmap object.
</summary>
</member>
<member name="F:CD2DBitmapBrush.m_pBitmapBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="996">
<summary>
Stores a pointer to an ID2D1BitmapBrush object.
</summary>
</member>
<member name="F:CD2DBitmapBrush.m_pBitmapBrushProperties" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1001">
<summary>
Bitmap brush properties.
</summary>
</member>
<member name="T:CD2DGradientBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1007">
<summary>
The base class of CD2DLinearGradientBrush and CD2DRadialGradientBrush classes.
</summary>
</member>
<member name="M:CD2DGradientBrush.#ctor(CRenderTarget*,D2D1_GRADIENT_STOP!System.Runtime.CompilerServices.IsConst*,System.UInt32,D2D1_GAMMA,D2D1_EXTEND_MODE,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1015">
<summary>
Constructs a CD2DGradientBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="gradientStops">A pointer to an array of D2D1_GRADIENT_STOP structures.</param>
<param name="gradientStopsCount">A value greater than or equal to 1 that specifies the number of gradient stops in the gradientStops array.</param>
<param name="colorInterpolationGamma">The space in which color interpolation between the gradient stops is performed.</param>
<param name="extendMode">The behavior of the gradient outside the [0,1] normalized range.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DGradientBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1026">
<summary>
The destructor. Called when a D2D gradient brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DGradientBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1032">
<summary>
Destroys a CD2DGradientBrush object.</summary>
</member>
<member name="F:CD2DGradientBrush.m_arGradientStops" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1037">
<summary>
Array of the D2D1_GRADIENT_STOP structures.
</summary>
</member>
<member name="F:CD2DGradientBrush.m_colorInterpolationGamma" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1042">
<summary>
The space in which color interpolation between the gradient stops is performed.
</summary>
</member>
<member name="F:CD2DGradientBrush.m_extendMode" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1047">
<summary>
The behavior of the gradient outside the [0,1] normalized range.
</summary>
</member>
<member name="F:CD2DGradientBrush.m_pGradientStops" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1052">
<summary>
A pointer to an array of D2D1_GRADIENT_STOP structures.
</summary>
</member>
<member name="T:CD2DLinearGradientBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1058">
<summary>
ID2D1LinearGradientBrush wrapper.
</summary>
</member>
<member name="M:CD2DLinearGradientBrush.#ctor(CRenderTarget*,D2D1_GRADIENT_STOP!System.Runtime.CompilerServices.IsConst*,System.UInt32,D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES,D2D1_GAMMA,D2D1_EXTEND_MODE,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1066">
<summary>
Constructs a CD2DLinearGradientBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="gradientStops">A pointer to an array of D2D1_GRADIENT_STOP structures.</param>
<param name="gradientStopsCount">A value greater than or equal to 1 that specifies the number of gradient stops in the gradientStops array.</param>
<param name="LinearGradientBrushProperties">The start and end points of the gradient.</param>
<param name="colorInterpolationGamma">The space in which color interpolation between the gradient stops is performed.</param>
<param name="extendMode">The behavior of the gradient outside the [0,1] normalized range.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DLinearGradientBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1078">
<summary>
The destructor. Called when a D2D linear gradient brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DLinearGradientBrush.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1084">
<summary>
Creates a CD2DLinearGradientBrush.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DLinearGradientBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1091">
<summary>
Destroys a CD2DLinearGradientBrush object.</summary>
</member>
<member name="M:CD2DLinearGradientBrush.Attach(ID2D1LinearGradientBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1095">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DLinearGradientBrush.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1100">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DLinearGradientBrush.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1106">
<summary>
Returns ID2D1LinearGradientBrush interface</summary>
<returns> 
Pointer to an ID2D1LinearGradientBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DLinearGradientBrush.op_Implicit~ID2D1LinearGradientBrush*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1112">
<summary>
Returns ID2D1LinearGradientBrush interface</summary>
<returns> 
Pointer to an ID2D1LinearGradientBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DLinearGradientBrush.SetStartPoint(CD2DPointF)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1118">
<summary>
Sets the starting coordinates of the linear gradient in the brush's coordinate space</summary>
<param name="point">The starting two-dimensional coordinates of the linear gradient, in the brush's coordinate space</param>
</member>
<member name="M:CD2DLinearGradientBrush.SetEndPoint(CD2DPointF)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1123">
<summary>
Sets the ending coordinates of the linear gradient in the brush's coordinate space</summary>
<param name="point">The ending two-dimensional coordinates of the linear gradient, in the brush's coordinate space</param>
</member>
<member name="M:CD2DLinearGradientBrush.GetStartPoint" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1128">
<summary>
Retrieves the starting coordinates of the linear gradient</summary>
<returns> 
The starting two-dimensional coordinates of the linear gradient, in the brush's coordinate space</returns>
</member>
<member name="M:CD2DLinearGradientBrush.GetEndPoint" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1134">
<summary>
Retrieves the ending coordinates of the linear gradient</summary>
<returns> 
The ending two-dimensional coordinates of the linear gradient, in the brush's coordinate space</returns>
</member>
<member name="F:CD2DLinearGradientBrush.m_LinearGradientBrushProperties" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1141">
<summary>
The start and end points of the gradient.
</summary>
</member>
<member name="F:CD2DLinearGradientBrush.m_pLinearGradientBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1146">
<summary>
A pointer to an ID2D1LinearGradientBrush.
</summary>
</member>
<member name="T:CD2DRadialGradientBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1152">
<summary>
ID2D1RadialGradientBrush wrapper.
</summary>
</member>
<member name="M:CD2DRadialGradientBrush.#ctor(CRenderTarget*,D2D1_GRADIENT_STOP!System.Runtime.CompilerServices.IsConst*,System.UInt32,D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES,D2D1_GAMMA,D2D1_EXTEND_MODE,CD2DBrushProperties*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1160">
<summary>
Constructs a CD2DLinearGradientBrush object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="gradientStops">A pointer to an array of D2D1_GRADIENT_STOP structures.</param>
<param name="gradientStopsCount">A value greater than or equal to 1 that specifies the number of gradient stops in the gradientStops array.</param>
<param name="RadialGradientBrushProperties">The center, gradient origin offset, and x-radius and y-radius of the brush's gradient.</param>
<param name="colorInterpolationGamma">The space in which color interpolation between the gradient stops is performed.</param>
<param name="extendMode">The behavior of the gradient outside the [0,1] normalized range.</param>
<param name="pBrushProperties">A pointer to the opacity and transformation of a brush.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DRadialGradientBrush.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1172">
<summary>
The destructor. Called when a D2D radial gradient brush object is being destroyed.
</summary>
</member>
<member name="M:CD2DRadialGradientBrush.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1178">
<summary>
Creates a CD2DRadialGradientBrush.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DRadialGradientBrush.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1185">
<summary>
Destroys a CD2DRadialGradientBrush object.</summary>
</member>
<member name="M:CD2DRadialGradientBrush.Attach(ID2D1RadialGradientBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1189">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DRadialGradientBrush.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1194">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DRadialGradientBrush.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1200">
<summary>
Returns ID2D1RadialGradientBrush interface</summary>
<returns> 
Pointer to an ID2D1RadialGradientBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DRadialGradientBrush.op_Implicit~ID2D1RadialGradientBrush*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1206">
<summary>
Returns ID2D1RadialGradientBrush interface</summary>
<returns> 
Pointer to an ID2D1RadialGradientBrush interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DRadialGradientBrush.SetCenter(CD2DPointF)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1212">
<summary>
Specifies the center of the gradient ellipse in the brush's coordinate space</summary>
<param name="point">The center of the gradient ellipse, in the brush's coordinate space</param>
</member>
<member name="M:CD2DRadialGradientBrush.SetGradientOriginOffset(CD2DPointF)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1217">
<summary>
Specifies the offset of the gradient origin relative to the gradient ellipse's center</summary>
<param name="gradientOriginOffset">The offset of the gradient origin from the center of the gradient ellipse</param>
</member>
<member name="M:CD2DRadialGradientBrush.SetRadiusX(System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1222">
<summary>
Specifies the x-radius of the gradient ellipse, in the brush's coordinate space</summary>
<param name="radiusX">The x-radius of the gradient ellipse. This value is in the brush's coordinate space</param>
</member>
<member name="M:CD2DRadialGradientBrush.SetRadiusY(System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1227">
<summary>
Specifies the y-radius of the gradient ellipse, in the brush's coordinate space</summary>
<param name="radiusY">The y-radius of the gradient ellipse. This value is in the brush's coordinate space</param>
</member>
<member name="M:CD2DRadialGradientBrush.GetCenter" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1232">
<summary>
Retrieves the center of the gradient ellipse</summary>
<returns> 
The center of the gradient ellipse. This value is expressed in the brush's coordinate space</returns>
</member>
<member name="M:CD2DRadialGradientBrush.GetGradientOriginOffset" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1238">
<summary>
Retrieves the offset of the gradient origin relative to the gradient ellipse's center</summary>
<returns> 
The offset of the gradient origin from the center of the gradient ellipse. This value is expressed in the brush's coordinate space</returns>
</member>
<member name="M:CD2DRadialGradientBrush.GetRadiusX" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1244">
<summary>
Retrieves the x-radius of the gradient ellipse</summary>
<returns> 
The x-radius of the gradient ellipse. This value is expressed in the brush's coordinate space</returns>
</member>
<member name="M:CD2DRadialGradientBrush.GetRadiusY" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1250">
<summary>
Retrieves the y-radius of the gradient ellipse</summary>
<returns> 
The y-radius of the gradient ellipse. This value is expressed in the brush's coordinate space</returns>
</member>
<member name="F:CD2DRadialGradientBrush.m_RadialGradientBrushProperties" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1257">
<summary>
The center, gradient origin offset, and x-radius and y-radius of the brush's gradient.
</summary>
</member>
<member name="F:CD2DRadialGradientBrush.m_pRadialGradientBrush" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1262">
<summary>
A pointer to an ID2D1RadialGradientBrush.
</summary>
</member>
<member name="T:CD2DTextFormat" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1268">
<summary>
IDWriteTextFormat wrapper.
</summary>
</member>
<member name="M:CD2DTextFormat.#ctor(CRenderTarget*,ATL.CStringT&lt;System.Char,StrTraitMFC&lt;System.Char,ATL.ChTraitsCRT{System.Char}&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single,DWRITE_FONT_WEIGHT,DWRITE_FONT_STYLE,DWRITE_FONT_STRETCH,ATL.CStringT&lt;System.Char,StrTraitMFC&lt;System.Char,ATL.ChTraitsCRT{System.Char}&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,IDWriteFontCollection*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1278">
<summary>
Constructs a CD2DTextFormat object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="strFontFamilyName">A CString object that contains the name of the font family.</param>
<param name="fontSize">The logical size of the font in DIP ("device-independent pixel") units. A DIPequals 1/96 inch.</param>
<param name="fontWeight">A value that indicates the font weight for the text object.</param>
<param name="fontStyle">A value that indicates the font style for the text object.</param>
<param name="fontStretch">A value that indicates the font stretch for the text object.</param>
<param name="strFontLocale">A CString object that contains the locale name.</param>
<param name="pFontCollection">A pointer to a font collection object. When this is NULL, indicates the system font collection.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DTextFormat.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1291">
<summary>
The destructor. Called when a D2D text format object is being destroyed.
</summary>
</member>
<member name="M:CD2DTextFormat.ReCreate(CRenderTarget*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1296">
<summary>
Re-creates a CD2DTextFormat.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DTextFormat.Create(CRenderTarget*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1303">
<summary>
Creates a CD2DTextFormat.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DTextFormat.Destroy" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1310">
<summary>
Destroys a CD2DTextFormat object.</summary>
</member>
<member name="M:CD2DTextFormat.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1314">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DTextFormat.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1320">
<summary>
Returns IDWriteTextFormat interface</summary>
<returns> 
Pointer to an IDWriteTextFormat interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DTextFormat.op_Implicit~IDWriteTextFormat*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1326">
<summary>
Returns IDWriteTextFormat interface</summary>
<returns>
Pointer to an IDWriteTextFormat interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DTextFormat.GetFontFamilyName" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1332">
<summary>
Gets a copy of the font family name.</summary>
<returns>
CString object that contains the current font family name.</returns>
</member>
<member name="M:CD2DTextFormat.GetLocaleName" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1338">
<summary>
Gets a copy of the locale name.</summary>
<returns>
CString object that contains the current locale name.</returns>
</member>
<member name="F:CD2DTextFormat.m_pTextFormat" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1345">
<summary>
A pointer to an IDWriteTextFormat.
</summary>
</member>
<member name="T:CD2DTextLayout" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1351">
<summary>
IDWriteTextLayout wrapper.
</summary>
</member>
<member name="M:CD2DTextLayout.#ctor(CRenderTarget*,ATL.CStringT&lt;System.Char,StrTraitMFC&lt;System.Char,ATL.ChTraitsCRT{System.Char}&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DTextFormat*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DSizeF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1359">
<summary>
Constructs a CD2DTextLayout object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="strText">A CString object that contains the string to create a new CD2DTextLayout object from.</param>
<param name="textFormat">A CString object that contains the format to apply to the string.</param>
<param name="sizeMax">The size of the layout box.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DTextLayout.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1368">
<summary>
The destructor. Called when a D2D text layout object is being destroyed.
</summary>
</member>
<member name="M:CD2DTextLayout.ReCreate(CRenderTarget*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1373">
<summary>
Re-creates a CD2DTextLayout.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DTextLayout.Create(CRenderTarget*)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1380">
<summary>
Creates a CD2DTextLayout.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DTextLayout.Destroy" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1387">
<summary>
Destroys a CD2DTextLayout object.</summary>
</member>
<member name="M:CD2DTextLayout.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1391">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DTextLayout.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1397">
<summary>
Returns IDWriteTextLayout interface</summary>
<returns>
Pointer to an IDWriteTextLayout interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DTextLayout.op_Implicit~IDWriteTextLayout*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1403">
<summary>
Returns IDWriteTextLayout interface</summary>
<returns>
Pointer to an IDWriteTextLayout interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DTextLayout.SetFontFamilyName(System.Char!System.Runtime.CompilerServices.IsConst*,DWRITE_TEXT_RANGE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1409">
<summary>
Sets null-terminated font family name for text within a specified text range</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE</returns>
<param name="pwzFontFamilyName">The font family name that applies to the entire text string within the range specified by textRange</param>
<param name="textRange">Text range to which this change applies</param>
</member>
<member name="M:CD2DTextLayout.SetLocaleName(System.Char!System.Runtime.CompilerServices.IsConst*,DWRITE_TEXT_RANGE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1417">
<summary>
Sets the locale name for text within a specified text range</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE</returns>
<param name="pwzLocaleName">A null-terminated locale name string</param>
<param name="textRange">Text range to which this change applies</param>
</member>
<member name="M:CD2DTextLayout.GetFontFamilyName(System.UInt32,DWRITE_TEXT_RANGE*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1425">
<summary>
Copies the font family name of the text at the specified position.</summary>
<returns>
CString object that contains the current font family name.</returns>
<param name="currentPosition">The position of the text to examine.</param>
<param name="textRange">The range of text that has the same formatting as the text at the position specified by currentPosition. This means the run has the exact formatting as the position specified, including but not limited to the font family name.</param>
</member>
<member name="M:CD2DTextLayout.GetLocaleName(System.UInt32,DWRITE_TEXT_RANGE*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1433">
<summary>
Gets the locale name of the text at the specified position.</summary>
<returns>
CString object that contains the current locale name.</returns>
<param name="currentPosition">The position of the text to inspect.</param>
<param name="textRange">The range of text that has the same formatting as the text at the position specified by currentPosition. This means the run has the exact formatting as the position specified, including but not limited to the locale name.</param>
</member>
<member name="F:CD2DTextLayout.m_pTextLayout" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1442">
<summary>
A pointer to an IDWriteTextLayout.
</summary>
</member>
<member name="T:CD2DGeometry" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1448">
<summary>
ID2D1Geometry wrapper.
</summary>
</member>
<member name="M:CD2DGeometry.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1456">
<summary>
Constructs a CD2DGeometry object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DGeometry.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1462">
<summary>
The destructor. Called when a D2D geometry object is being destroyed.
</summary>
</member>
<member name="M:CD2DGeometry.Attach(ID2D1Geometry*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1467">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DGeometry.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1472">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DGeometry.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1478">
<summary>
Returns ID2D1Geometry interface</summary>
<returns> 
Pointer to an ID2D1Geometry interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DGeometry.op_Implicit~ID2D1Geometry*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1484">
<summary>
Returns ID2D1Geometry interface</summary>
<returns> 
Pointer to an ID2D1Geometry interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DGeometry.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1490">
<summary>
Destroys a CD2DGeometry object.</summary>
</member>
<member name="M:CD2DGeometry.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1494">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DGeometry.CombineWithGeometry(CD2DGeometry*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,D2D1_COMBINE_MODE,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,ID2D1SimplifiedGeometrySink*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1500">
<summary>
Combines this geometry with the specified geometry and stores the result in an ID2D1SimplifiedGeometrySink.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="inputGeometry">The geometry to combine with this instance.</param>
<param name="combineMode">The type of combine operation to perform.</param>
<param name="inputGeometryTransform">The transform to apply to inputGeometry before combining.</param>
<param name="geometrySink">The result of the combine operation.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometries. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.CompareWithGeometry(CD2DGeometry*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1511">
<summary>
Describes the intersection between this geometry and the specified geometry. The comparison is performed using the specified flattening tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="inputGeometry">The geometry to test.</param>
<param name="inputGeometryTransform">The transform to apply to inputGeometry.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometries. Smaller values produce more accurate results but cause slower execution. </param>
</member>
<member name="M:CD2DGeometry.ComputeArea(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1520">
<summary>
Computes the area of the geometry after it has been transformed by the specified matrix and flattened using the specified tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="worldTransform">The transform to apply to this geometry before computing its area.</param>
<param name="area">When this method returns, contains a pointer to the area of the transformed, flattened version of this geometry. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.ComputeLength(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1529">
<summary>
Calculates the length of the geometry as though each segment were unrolled into a line.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="worldTransform">The transform to apply to the geometry before calculating its length.</param>
<param name="length">When this method returns, contains a pointer to the length of the geometry. For closed geometries, the length includes an implicit closing segment. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.ComputePointAtLength(System.Single,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DPointF*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DPointF*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1538">
<summary>
Calculates the point and tangent vector at the specified distance along the geometry after it has been transformed by the specified matrix and flattened using the specified tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="length">The distance along the geometry of the point and tangent to find. If this distance is less then 0, this method calculates the first point in the geometry. If this distance is greater than the length of the geometry, this method calculates the last point in the geometry.</param>
<param name="worldTransform">The transform to apply to the geometry before calculating the specified point and tangent.</param>
<param name="point">The location at the specified distance along the geometry. If the geometry is empty, this point contains NaN as its x and y values.</param>
<param name="unitTangentVector">When this method returns, contains a pointer to the tangent vector at the specified distance along the geometry. If the geometry is empty, this vector contains NaN as its x and y values. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.GetBounds(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DRectF*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1549">
<summary>
Retrieves the bounds of the geometry.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="worldTransform">The transform to apply to this geometry before calculating its bounds.</param>
<param name="bounds">When this method returns, contains the bounds of this geometry. If the bounds are empty, this will be a rect where bounds.left is greater than bounds.right. You must allocate storage for this parameter.</param>
</member>
<member name="M:CD2DGeometry.GetWidenedBounds(System.Single,ID2D1StrokeStyle*,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DRectF*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1557">
<summary>
Gets the bounds of the geometry after it has been widened by the specified stroke width and style and transformed by the specified matrix.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="strokeWidth">The amount by which to widen the geometry by stroking its outline.</param>
<param name="strokeStyle">The style of the stroke that widens the geometry.</param>
<param name="worldTransform">A transform to apply to the geometry after the geometry is transformed and after the geometry has been stroked.</param>
<param name="bounds">When this method returns, contains the bounds of the widened geometry. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometries. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.FillContainsPoint(CD2DPointF,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int32*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1568">
<summary>
Indicates whether the area filled by the geometry would contain the specified point given the specified flattening tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="point">The point to test.</param>
<param name="worldTransform">The transform to apply to the geometry prior to testing for containment.</param>
<param name="contains">When this method returns, contains a bool value that is TRUE if the area filled by the geometry contains point; otherwise, FALSE. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The numeric accuracy with which the precise geometric path and path intersection is calculated. Points missing the fill by less than the tolerance are still considered inside. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.StrokeContainsPoint(CD2DPointF,System.Single,ID2D1StrokeStyle*,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int32*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1578">
<summary>
Determines whether the geometry's stroke contains the specified point given the specified stroke thickness, style, and transform.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="point">The point to test for containment.</param>
<param name="strokeWidth">The thickness of the stroke to apply.</param>
<param name="strokeStyle">The style of the stroke to apply.</param>
<param name="worldTransform">The transform to apply to the stroked geometry.</param>
<param name="contains">When this method returns, contains a boolean value set to TRUE if the geometry's stroke contains the specified point; otherwise, FALSE. You must allocate storage for this parameter.</param>
<param name="flatteningTolerance">The numeric accuracy with which the precise geometric path and path intersection is calculated. Points missing the stroke by less than the tolerance are still considered inside. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.Outline(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,ID2D1SimplifiedGeometrySink*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1590">
<summary>
Computes the outline of the geometry and writes the result to an ID2D1SimplifiedGeometrySink.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="worldTransform">The transform to apply to the geometry outline.</param>
<param name="geometrySink">The ID2D1SimplifiedGeometrySink to which the geometry transformed outline is appended.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.Simplify(D2D1_GEOMETRY_SIMPLIFICATION_OPTION,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,ID2D1SimplifiedGeometrySink*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1599">
<summary>
Creates a simplified version of the geometry that contains only lines and (optionally) cubic Bezier curves and writes the result to an ID2D1SimplifiedGeometrySink.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="simplificationOption">A value that specifies whether the simplified geometry should contain curves.</param>
<param name="worldTransform">The transform to apply to the simplified geometry.</param>
<param name="geometrySink">The ID2D1SimplifiedGeometrySink to which the simplified geometry is appended.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.Tessellate(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,ID2D1TessellationSink*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1609">
<summary>
Creates a set of clockwise-wound triangles that cover the geometry after it has been transformed using the specified matrix and flattened using the specified tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="worldTransform">The transform to apply to this geometry, or NULL.</param>
<param name="tessellationSink">The ID2D1TessellationSink to which the tessellated is appended.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="M:CD2DGeometry.Widen(System.Single,ID2D1StrokeStyle*,D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,ID2D1SimplifiedGeometrySink*,System.Single)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1618">
<summary>
Widens the geometry by the specified stroke and writes the result to an ID2D1SimplifiedGeometrySink after it has been transformed by the specified matrix and flattened using the specified tolerance.</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="strokeWidth">The amount by which to widen the geometry.</param>
<param name="strokeStyle">The style of stroke to apply to the geometry, or NULL.</param>
<param name="worldTransform">The transform to apply to the geometry after widening it.</param>
<param name="geometrySink">The ID2D1SimplifiedGeometrySink to which the widened geometry is appended.</param>
<param name="flatteningTolerance">The maximum bounds on the distance between points in the polygonal approximation of the geometry. Smaller values produce more accurate results but cause slower execution.</param>
</member>
<member name="F:CD2DGeometry.m_pGeometry" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1630">
<summary>
A pointer to an ID2D1Geometry.
</summary>
</member>
<member name="T:CD2DPathGeometry" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1636">
<summary>
ID2D1PathGeometry wrapper.
</summary>
</member>
<member name="M:CD2DPathGeometry.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1644">
<summary>
Constructs a CD2DPathGeometry object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DPathGeometry.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1650">
<summary>
Creates a CD2DPathGeometry.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DPathGeometry.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1657">
<summary>
Destroys a CD2DPathGeometry object.</summary>
</member>
<member name="M:CD2DPathGeometry.Attach(ID2D1PathGeometry*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1661">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DPathGeometry.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1666">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DPathGeometry.Open" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1672">
<summary>
Retrieves the geometry sink that is used to populate the path geometry with figures and segments.</summary>
<returns>
A pointer to the ID2D1GeometrySink that is used to populate the path geometry with figures and segments.</returns>
</member>
<member name="M:CD2DPathGeometry.Stream(ID2D1GeometrySink*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1678">
<summary>
Copies the contents of the path geometry to the specified ID2D1GeometrySink.</summary>
<returns>
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="geometrySink">The sink to which the path geometry's contents are copied. Modifying this sink does not change the contents of this path geometry.</param>
</member>
<member name="M:CD2DPathGeometry.GetSegmentCount" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1685">
<summary>
Retrieves the number of segments in the path geometry.</summary>
<returns> 
Returns the number of segments in the path geometry.</returns>
</member>
<member name="M:CD2DPathGeometry.GetFigureCount" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1691">
<summary>
Retrieves tthe number of figures in the path geometry.</summary>
<returns> 
Returns the number of figures in the path geometry.</returns>
</member>
<member name="F:CD2DPathGeometry.m_pPathGeometry" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1698">
<summary>
A pointer to an ID2D1PathGeometry.
</summary>
</member>
<member name="T:CD2DGeometrySink" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1704">
<summary>
ID2D1GeometrySink wrapper.
</summary>
</member>
<member name="M:CD2DGeometrySink.#ctor(CD2DPathGeometry*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1710">
<summary>
Constructs a CD2DGeometrySink object from CD2DPathGeometry object.</summary>
<param name="pathGeometry">An existing CD2DPathGeometry object.</param>
</member>
<member name="M:CD2DGeometrySink.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1715">
<summary>
The destructor. Called when a D2D geometry sink object is being destroyed.
</summary>
</member>
<member name="M:CD2DGeometrySink.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1720">
<summary>
Checks geometry sink validity</summary>
<returns> 
TRUE if geometry sink is valid; otherwise FALSE.</returns>
</member>
<member name="M:CD2DGeometrySink.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1726">
<summary>
Returns ID2D1GeometrySink interface</summary>
<returns> 
Pointer to an ID2D1GeometrySink interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DGeometrySink.op_Implicit~ID2D1GeometrySink*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1732">
<summary>
Returns ID2D1GeometrySink interface</summary>
<returns> 
Pointer to an ID2D1GeometrySink interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DGeometrySink.BeginFigure(CD2DPointF,D2D1_FIGURE_BEGIN)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1738">
<summary>
Starts a new figure at the specified point.</summary>
<param name="startPoint">The point at which to begin the new figure.</param>
<param name="figureBegin">Whether the new figure should be hollow or filled.</param>
</member>
<member name="M:CD2DGeometrySink.EndFigure(D2D1_FIGURE_END)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1744">
<summary>
Ends the current figure; optionally, closes it.</summary>
<param name="figureEnd">A value that indicates whether the current figure is closed. If the figure is closed, a line is drawn between the current point and the start point specified by BeginFigure.</param>
</member>
<member name="M:CD2DGeometrySink.AddArc(D2D1_ARC_SEGMENT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1749">
<summary>
Adds a single arc to the path geometry</summary>
<param name="arc">The arc segment to add to the figure</param>
</member>
<member name="M:CD2DGeometrySink.AddBezier(D2D1_BEZIER_SEGMENT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1754">
<summary>
Creates a cubic Bezier curve between the current point and the specified end point.</summary>
<param name="bezier">A structure that describes the control points and end point of the Bezier curve to add.</param>
</member>
<member name="M:CD2DGeometrySink.AddBeziers(CArray&lt;D2D1_BEZIER_SEGMENT,D2D1_BEZIER_SEGMENT&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1759">
<summary>
Creates a sequence of cubic Bezier curves and adds them to the geometry sink.</summary>
<param name="beziers">An array of Bezier segments that describes the Bezier curves to create. A curve is drawn from the geometry sink's current point (the end point of the last segment drawn or the location specified by BeginFigure) to the end point of the first Bezier segment in the array. if the array contains additional Bezier segments, each subsequent Bezier segment uses the end point of the preceding Bezier segment as its start point.</param>
</member>
<member name="M:CD2DGeometrySink.AddQuadraticBezier(D2D1_QUADRATIC_BEZIER_SEGMENT!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1764">
<summary>
Creates a quadratic Bezier curve between the current point and the specified end point.</summary>
<param name="bezier">A structure that describes the control point and the end point of the quadratic Bezier curve to add.</param>
</member>
<member name="M:CD2DGeometrySink.AddQuadraticBeziers(CArray&lt;D2D1_QUADRATIC_BEZIER_SEGMENT,D2D1_QUADRATIC_BEZIER_SEGMENT&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1769">
<summary>
Adds a sequence of quadratic Bezier segments as an array in a single call.</summary>
<param name="beziers">An array of a sequence of quadratic Bezier segments.</param>
</member>
<member name="M:CD2DGeometrySink.AddLine(CD2DPointF)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1774">
<summary>
Creates a line segment between the current point and the specified end point and adds it to the geometry sink.</summary>
<param name="point">The end point of the line to draw.</param>
</member>
<member name="M:CD2DGeometrySink.AddLines(CArray&lt;CD2DPointF,CD2DPointF&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1779">
<summary>
Creates a sequence of lines using the specified points and adds them to the geometry sink.</summary>
<param name="points">An array of one or more points that describe the lines to draw. A line is drawn from the geometry sink's current point (the end point of the last segment drawn or the location specified by BeginFigure) to the first point in the array. if the array contains additional points, a line is drawn from the first point to the second point in the array, from the second point to the third point, and so on. An array of a sequence of the end points of the lines to draw.</param>
</member>
<member name="M:CD2DGeometrySink.Close" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1784">
<summary>
Closes the geometry sink</summary>
<returns> 
Nonzero if successful; otherwise FALSE.</returns>
</member>
<member name="M:CD2DGeometrySink.SetFillMode(D2D1_FILL_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1790">
<summary>
Specifies the method used to determine which points are inside the geometry described by this geometry sink and which points are outside.</summary>
<param name="fillMode">The method used to determine whether a given point is part of the geometry.</param>
</member>
<member name="M:CD2DGeometrySink.SetSegmentFlags(D2D1_PATH_SEGMENT)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1795">
<summary>
Specifies stroke and join options to be applied to new segments added to the geometry sink.</summary>
<param name="vertexFlags">Stroke and join options to be applied to new segments added to the geometry sink.</param>
</member>
<member name="F:CD2DGeometrySink.m_pSink" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1801">
<summary>
A pointer to an ID2D1GeometrySink.
</summary>
</member>
<member name="T:CD2DMesh" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1807">
<summary>
ID2D1Mesh wrapper.
</summary>
</member>
<member name="M:CD2DMesh.#ctor(CRenderTarget*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1815">
<summary>
Constructs a CD2DMesh object.</summary>
<param name="pParentTarget">A pointer to the render target.</param>
<param name="bAutoDestroy">Indicates that the object will be destroyed by owner (pParentTarget).</param>
</member>
<member name="M:CD2DMesh.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1821">
<summary>
The destructor. Called when a D2D mesh object is being destroyed.
</summary>
</member>
<member name="M:CD2DMesh.Attach(ID2D1Mesh*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1826">
<summary>
Attaches existing resource interface to the object</summary>
<param name="pResource">Existing resource interface. Cannot be NULL</param>
</member>
<member name="M:CD2DMesh.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1831">
<summary>
Detaches resource interface from the object</summary>
<returns> 
Pointer to detached resource interface.</returns>
</member>
<member name="M:CD2DMesh.Get" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1837">
<summary>
Returns ID2D1Mesh interface</summary>
<returns> 
Pointer to an ID2D1Mesh interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DMesh.op_Implicit~ID2D1Mesh*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1843">
<summary>
Returns ID2D1Mesh interface</summary>
<returns> 
Pointer to an ID2D1Mesh interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CD2DMesh.Open" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1849">
<summary>
Opens the mesh for population.</summary>
<returns>
A pointer to an ID2D1TessellationSink that is used to populate the mesh.</returns>
</member>
<member name="M:CD2DMesh.Create(CRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1855">
<summary>
Creates a CD2DMesh.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
<param name="pRenderTarget">A pointer to the render target.</param>
</member>
<member name="M:CD2DMesh.Destroy" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1862">
<summary>
Destroys a CD2DMesh object.</summary>
</member>
<member name="M:CD2DMesh.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1866">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="F:CD2DMesh.m_pMesh" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1873">
<summary>
A pointer to an ID2D1Mesh.
</summary>
</member>
<member name="T:CRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1879">
<summary>
ID2D1RenderTarget wrapper.
</summary>
</member>
<member name="M:CRenderTarget.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1891">
<summary>
Constructs a CRenderTarget object.</summary>
</member>
<member name="M:CRenderTarget.Dispose" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1895">
<summary>
The destructor. Called when a render target object is being destroyed.
</summary>
</member>
<member name="M:CRenderTarget.Destroy(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1900">
<summary>
Deletes one or more resources</summary>
<returns> 
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE</returns>
<param name="bDeleteResources">If bDeleteResources is TRUE, all resources located in m_lstResources will be automatically destroyed.</param>
</member>
<member name="M:CRenderTarget.IsValid" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1909">
<summary>
Checks resource validity</summary>
<returns> 
TRUE if resource is valid; otherwise FALSE.</returns>
</member>
<member name="M:CRenderTarget.GetRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1915">
<summary>
Returns ID2D1RenderTarget interface</summary>
<returns> 
Pointer to an ID2D1RenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CRenderTarget.op_Implicit~ID2D1RenderTarget*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1921">
<summary>
Returns ID2D1RenderTarget interface</summary>
<returns> 
Pointer to an ID2D1RenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CRenderTarget.GetSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1927">
<summary>
Returns the size of the render target in device-independent pixels</summary>
<returns> 
The current size of the render target in device-independent pixels</returns>
</member>
<member name="M:CRenderTarget.SetDpi(CD2DSizeF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1933">
<summary>
Sets the dots per inch (DPI) of the render target.</summary>
<param name="sizeDPI">A value greater than or equal to zero that specifies the horizontal/verticalDPI of the render target.</param>
</member>
<member name="M:CRenderTarget.GetDpi" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1938">
<summary>
Returns the render target's dots per inch (DPI)</summary>
<returns> 
The render target's dots per inch (DPI).</returns>
</member>
<member name="M:CRenderTarget.GetPixelFormat" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1944">
<summary>
Retrieves the pixel format and alpha mode of the render target</summary>
<returns> 
The pixel format and alpha mode of the render target</returns>
</member>
<member name="M:CRenderTarget.GetPixelSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1950">
<summary>
Returns the size of the render target in device pixels</summary>
<returns> 
The size of the render target in device pixels</returns>
</member>
<member name="M:CRenderTarget.GetTags(System.UInt64*,System.UInt64*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1956">
<summary>
Gets the label for subsequent drawing operations.</summary>
<param name="tag1">Contains the first label for subsequent drawing operations. This parameter is passed uninitialized. If NULL is specified, no value is retrieved for this parameter.</param>
<param name="tag2">Contains the second label for subsequent drawing operations. This parameter is passed uninitialized. If NULL is specified, no value is retrieved for this parameter.</param>
</member>
<member name="M:CRenderTarget.SetTags(System.UInt64,System.UInt64)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1962">
<summary>
Specifies a label for subsequent drawing operations.</summary>
<param name="tag1">A label to apply to subsequent drawing operations.</param>
<param name="tag2">A label to apply to subsequent drawing operations.</param>
</member>
<member name="M:CRenderTarget.IsSupported(D2D1_RENDER_TARGET_PROPERTIES!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1968">
<summary>
Indicates whether the render target supports the specified properties</summary>
<returns> 
TRUE if the specified render target properties are supported by this render target; otherwise, FALSE</returns>
<param name="renderTargetProperties">The render target properties to test</param>
</member>
<member name="M:CRenderTarget.GetMaximumBitmapSize" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1975">
<summary>
Gets the maximum size, in device-dependent units (pixels), of any one bitmap dimension supported by the render target</summary>
<returns> 
The maximum size, in pixels, of any one bitmap dimension supported by the render target</returns>
</member>
<member name="M:CRenderTarget.Attach(ID2D1RenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1983">
<summary>
Attaches existing render target interface to the object</summary>
<param name="pRenderTarget">Existing render target interface. Cannot be NULL</param>
</member>
<member name="M:CRenderTarget.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1988">
<summary>
Detaches render target interface from the object</summary>
<returns> 
Pointer to detached render target interface.</returns>
</member>
<member name="M:CRenderTarget.BeginDraw" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1994">
<summary>
Initiates drawing on this render target.</summary>
</member>
<member name="M:CRenderTarget.EndDraw" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="1998">
<summary>
Ends drawing operations on the render target and indicates the current error state and associated tags.</summary>
<returns>
If the method succeeds, it returns S_OK. Otherwise, it returns an HRESULT error code.</returns>
</member>
<member name="M:CRenderTarget.COLORREF_TO_D2DCOLOR(System.UInt32!System.Runtime.CompilerServices.IsLong,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2004">
<summary>
Converts GDI color and alpha values to the D2D1_COLOR_F object.</summary>
<param name="color">RGB value.</param>
<param name="nAlpha">Alpha value.</param>
<returns>
D2D1_COLOR_F value.</returns>
</member>
<member name="M:CRenderTarget.Clear(_D3DCOLORVALUE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2012">
<summary>
Clears the drawing area to the specified color.</summary>
<param name="color">The color to which the drawing area is cleared.</param>
</member>
<member name="M:CRenderTarget.DrawRectangle(CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,System.Single,ID2D1StrokeStyle*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2017">
<summary>
Draws the outline of a rectangle that has the specified dimensions and stroke style.</summary>
<param name="rect">The dimensions of the rectangle to draw, in device-independent pixels</param>
<param name="pBrush">The brush used to paint the rectangle's stroke</param>
<param name="fStrokeWidth">A value greater than or equal to 0.0f that specifies the width of the rectangle's stroke. The stroke is centered on the rectangle's outline.</param>
<param name="strokeStyle">The style of stroke to paint, or NULL to paint a solid stroke.</param>
</member>
<member name="M:CRenderTarget.FillRectangle(CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2025">
<summary>
Paints the interior of the specified rectangle.</summary>
<param name="rect">The dimension of the rectangle to paint, in device-independent pixels.</param>
<param name="pBrush">The brush used to paint the rectangle's interior.</param>
</member>
<member name="M:CRenderTarget.DrawRoundedRectangle(CD2DRoundedRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,System.Single,ID2D1StrokeStyle*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2031">
<summary>
Draws the outline of the specified rounded rectangle using the specified stroke style.</summary>
<param name="rectRounded">The dimensions of the rounded rectangle to draw, in device-independent pixels.</param>
<param name="pBrush">The brush used to paint the rounded rectangle's outline.</param>
<param name="fStrokeWidth">The width of the rounded rectangle's stroke. The stroke is centered on the rounded rectangle's outline. The default value is 1.0f.</param>
<param name="strokeStyle">The style of the rounded rectangle's stroke, or NULL to paint a solid stroke. The default value is NULL.</param>
</member>
<member name="M:CRenderTarget.FillRoundedRectangle(CD2DRoundedRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2039">
<summary>
Paints the interior of the specified rounded rectangle.</summary>
<param name="rectRounded">The dimensions of the rounded rectangle to paint, in device independent pixels.</param>
<param name="pBrush">The brush used to paint the interior of the rounded rectangle.</param>
</member>
<member name="M:CRenderTarget.DrawEllipse(CD2DEllipse!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,System.Single,ID2D1StrokeStyle*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2045">
<summary>
Draws the outline of the specified ellipse using the specified stroke style.</summary>
<param name="ellipse">The position and radius of the ellipse to draw, in device-independent pixels.</param>
<param name="pBrush">The brush used to paint the ellipse's outline.</param>
<param name="fStrokeWidth">The thickness of the ellipse's stroke. The stroke is centered on the ellipse's outline.</param>
<param name="strokeStyle">The style of stroke to apply to the ellipse's outline, or NULL to paint a solid stroke.</param>
</member>
<member name="M:CRenderTarget.FillEllipse(CD2DEllipse!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2053">
<summary>
Paints the interior of the specified ellipse.</summary>
<param name="ellipse">The position and radius, in device-independent pixels, of the ellipse to paint.</param>
<param name="pBrush">The brush used to paint the interior of the ellipse.</param>
</member>
<member name="M:CRenderTarget.DrawLine(CD2DPointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DPointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,System.Single,ID2D1StrokeStyle*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2059">
<summary>
Draws a line between the specified points using the specified stroke style.</summary>
<param name="ptFrom">The start point of the line, in device-independent pixels.</param>
<param name="ptTo">The end point of the line, in device-independent pixels.</param>
<param name="pBrush">The brush used to paint the line's stroke.</param>
<param name="fStrokeWidth">A value greater than or equal to 0.0f that specifies the width of the stroke. If this parameter isn't specified, it defaults to 1.0f. The stroke is centered on the line.</param>
<param name="strokeStyle">The style of stroke to paint, or NULL to paint a solid line.</param>
</member>
<member name="M:CRenderTarget.FillOpacityMask(CD2DBitmap*,CD2DBrush*,D2D1_OPACITY_MASK_CONTENT,CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2068">
<summary>
Applies the opacity mask described by the specified bitmap to a brush and uses that brush to paint a region of the render target.</summary> 
<param name="pOpacityMask">The position and radius, in device-independent pixels, of the ellipse to paint.</param>
<param name="pBrush">The brush used to paint the region of the render target specified by destinationRectangle.</param>
<param name="content">The type of content the opacity mask contains. The value is used to determine the color space in which the opacity mask is blended.</param>
<param name="rectDest">The region of the render target to paint, in device-independent pixels.</param>
<param name="rectSrc">The region of the bitmap to use as the opacity mask, in device-independent pixels.</param>
</member>
<member name="M:CRenderTarget.DrawTextW(ATL.CStringT&lt;System.Char,StrTraitMFC&lt;System.Char,ATL.ChTraitsCRT{System.Char}&gt;&gt;!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,CD2DTextFormat*,D2D1_DRAW_TEXT_OPTIONS,DWRITE_MEASURING_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2077">
<summary>
Draws the specified text using the format information provided by an IDWriteTextFormat object.</summary>
<param name="strText">A pointer to an array of Unicode characters to draw.</param>
<param name="rect">The size and position of the area in which the text is drawn.</param>
<param name="pForegroundBrush">The brush used to paint the text.</param>
<param name="textFormat">An object that describes formatting details of the text to draw, such as the font, the font size, and flow direction.</param>
<param name="options">A value that indicates whether the text should be snapped to pixel boundaries and whether the text should be clipped to the layout rectangle. The default value is D2D1_DRAW_TEXT_OPTIONS_NONE, which indicates that text should be snapped to pixel boundaries and it should not be clipped to the layout rectangle.</param>
<param name="measuringMode">A value that indicates how glyph metrics are used to measure text when it is formatted. The default value is DWRITE_MEASURING_MODE_NATURAL.</param>
</member>
<member name="M:CRenderTarget.DrawTextLayout(CD2DPointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DTextLayout*,CD2DBrush*,D2D1_DRAW_TEXT_OPTIONS)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2087">
<summary>
Draws the formatted text described by the specified IDWriteTextLayout object.</summary>
<param name="ptOrigin">The point, described in device-independent pixels, at which the upper-left corner of the text described by textLayout is drawn.</param>
<param name="textLayout">The formatted text to draw. Any drawing effects that do not inherit from ID2D1Resource are ignored. If there are drawing effects that inherit from ID2D1Resource that are not brushes, this method fails and the render target is put in an error state.</param>
<param name="pBrushForeground">The brush used to paint any text in textLayout that does not already have a brush associated with it as a drawing effect (specified by the IDWriteTextLayout::SetDrawingEffect method).</param>
<param name="options">A value that indicates whether the text should be snapped to pixel boundaries and whether the text should be clipped to the layout rectangle. The default value is D2D1_DRAW_TEXT_OPTIONS_NONE, which indicates that text should be snapped to pixel boundaries and it should not be clipped to the layout rectangle.</param>
</member>
<member name="M:CRenderTarget.DrawBitmap(CD2DBitmap*,CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Single,D2D1_BITMAP_INTERPOLATION_MODE,CD2DRectF!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2095">
<summary>
Draws the formatted text described by the specified IDWriteTextLayout object.</summary>
<param name="pBitmap">The bitmap to render.</param>
<param name="rectDest">The size and position, in device-independent pixels in the render target's coordinate space, of the area to which the bitmap is drawn. If the rectangle is not well-ordered, nothing is drawn, but the render target does not enter an error state.</param>
<param name="fOpacity">A value between 0.0f and 1.0f, inclusive, that specifies an opacity value to apply to the bitmap; this value is multiplied against the alpha values of the bitmap's contents.</param>
<param name="interpolationMode">The interpolation mode to use if the bitmap is scaled or rotated by the drawing operation.</param>
<param name="pRectSrc">The size and position, in device-independent pixels in the bitmap's coordinate space, of the area within the bitmap to draw.</param>
</member>
<member name="M:CRenderTarget.DrawGeometry(CD2DGeometry*,CD2DBrush*,System.Single,ID2D1StrokeStyle*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2104">
<summary>
Draws the outline of the specified geometry using the specified stroke style.</summary>
<param name="pGeometry">The geometry to draw.</param>
<param name="pBrush">The brush used to paint the geometry's stroke.</param>
<param name="fStrokeWidth">The thickness of the geometry's stroke. The stroke is centered on the geometry's outline.</param>
<param name="strokeStyle">The style of stroke to apply to the geometry's outline, or NULL to paint a solid stroke.</param>
</member>
<member name="M:CRenderTarget.FillGeometry(CD2DGeometry*,CD2DBrush*,CD2DBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2112">
<summary>
Paints the interior of the specified geometry.</summary>
<param name="pGeometry">The geometry to paint.</param>
<param name="pBrush">The brush used to paint the geometry's interior.</param>
<param name="pOpacityBrush">The opacity mask to apply to the geometry;NULL for no opacity mask. If an opacity mask (the opacityBrush parameter) is specified, brush must be an ID2D1BitmapBrush that has its x- and y-extend modes set to D2D1_EXTEND_MODE_CLAMP. For more information, see the Remarks section.</param>
</member>
<member name="M:CRenderTarget.DrawGlyphRun(CD2DPointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,DWRITE_GLYPH_RUN!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DBrush*,DWRITE_MEASURING_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2119">
<summary>
Draws the specified glyphs.</summary>
<param name="ptBaseLineOrigin">The origin, in device-independent pixels, of the glyphs' baseline.</param>
<param name="glyphRun">The glyphs to render.</param>
<param name="pForegroundBrush">The brush used to paint the specified glyphs.</param>
<param name="measuringMode">A value that indicates how glyph metrics are used to measure text when it is formatted. The default value is DWRITE_MEASURING_MODE_NATURAL.</param>
</member>
<member name="M:CRenderTarget.FillMesh(CD2DMesh*,CD2DBrush*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2127">
<summary>
Paints the interior of the specified mesh.</summary>
<param name="pMesh">The mesh to paint.</param>
<param name="pBrush">The brush used to paint the mesh.</param>
</member>
<member name="M:CRenderTarget.SetAntialiasMode(D2D1_ANTIALIAS_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2133">
<summary>
Sets the antialiasing mode of the render target. The antialiasing mode applies to all subsequent drawing operations, excluding text and glyph drawing operations.</summary>
<param name="antialiasMode">The antialiasing mode for future drawing operations.</param>
</member>
<member name="M:CRenderTarget.GetAntialiasMode" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2138">
<summary>
Retrieves the current antialiasing mode for nontext drawing operations.</summary>
<returns>
Current antialiasing mode for nontext drawing operations.</returns>
</member>
<member name="M:CRenderTarget.SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2144">
<summary>
Specifies the antialiasing mode to use for subsequent text and glyph drawing operations.</summary>
<param name="textAntialiasMode">The antialiasing mode to use for subsequent text and glyph drawing operations.</param>
</member>
<member name="M:CRenderTarget.GetTextAntialiasMode" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2149">
<summary>
Gets the current antialiasing mode for text and glyph drawing operations.</summary>
<returns>
Current antialiasing mode for text and glyph drawing operations.</returns>
</member>
<member name="M:CRenderTarget.SetTextRenderingParams(IDWriteRenderingParams*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2155">
<summary>
Specifies text rendering options to be applied to all subsequent text and glyph drawing operations.</summary>
<param name="textRenderingParams">The text rendering options to be applied to all subsequent text and glyph drawing operations; NULL to clear current text rendering options.</param>
</member>
<member name="M:CRenderTarget.GetTextRenderingParams(IDWriteRenderingParams**)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2160">
<summary>
Retrieves the render target's current text rendering options.</summary>
<param name="textRenderingParams">When this method returns, textRenderingParamscontains the address of a pointer to the render target's current text rendering options.</param>
</member>
<member name="M:CRenderTarget.SetTransform(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2165">
<summary>
Applies the specified transform to the render target, replacing the existing transformation. All subsequent drawing operations occur in the transformed space.</summary> 
<param name="transform">The transform to apply to the render target.</param>
</member>
<member name="M:CRenderTarget.SetTransform(D2D_MATRIX_3X2_F!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2170">
<summary>
Applies the specified transform to the render target, replacing the existing transformation. All subsequent drawing operations occur in the transformed space.</summary> 
<param name="transform">The transform to apply to the render target.</param>
</member>
<member name="M:CRenderTarget.GetTransform(D2D_MATRIX_3X2_F*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2175">
<summary>
Applies the specified transform to the render target, replacing the existing transformation. All subsequent drawing operations occur in the transformed space.</summary> 
<param name="transform">The transform to apply to the render target.</param>
</member>
<member name="M:CRenderTarget.CreateCompatibleRenderTarget(CBitmapRenderTarget*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DSizeF,CD2DSizeU,D2D1_PIXEL_FORMAT*,D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2180">
<summary>
Creates a new bitmap render target for use during intermediate offscreen drawing that is compatible with the current render target .</summary> 
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="bitmapTarget">When this method returns, contains the address of a pointer to a new bitmap render target. This parameter is passed uninitialized.</param>
<param name="sizeDesired">The desired size of the new render target in device-independent pixels if it should be different from the original render target, or NULL. For more information, see the Remarks section.</param>
<param name="sizePixelDesired">The desired size of the new render target in pixels if it should be different from the original render target, or NULL. For more information, see the Remarks section.</param>
<param name="desiredFormat">The desired pixel format and alpha mode of the new render target, or NULL. If the pixel format is set to DXGI_FORMAT_UNKNOWN or if this parameter is null, the new render target uses the same pixel format as the original render target. If the alpha mode is D2D1_ALPHA_MODE_UNKNOWN or this parameter is NULL, the alpha mode of the new render target defaults to D2D1_ALPHA_MODE_PREMULTIPLIED. For information about supported pixel formats, see Supported Pixel Formats and Alpha Modes.</param>
<param name="options">A value that specifies whether the new render target must be compatible with GDI.</param>
</member>
<member name="M:CRenderTarget.PushLayer(D2D1_LAYER_PARAMETERS!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CD2DLayer*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2190">
<summary>
Adds the specified layer to the render target so that it receives all subsequent drawing operations until PopLayer is called.</summary> 
<param name="layerParameters">The content bounds, geometric mask, opacity, opacity mask, and antialiasing options for the layer.</param>
<param name="layer">The layer that receives subsequent drawing operations.</param>
</member>
<member name="M:CRenderTarget.PopLayer" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2196">
<summary>
Stops redirecting drawing operations to the layer that is specified by the last PushLayer call.</summary> 
</member>
<member name="M:CRenderTarget.Flush(System.UInt64*,System.UInt64*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2200">
<summary>
Executes all pending drawing commands.</summary> 
<param name="tag1">Contains the tag for drawing operations that caused errors or 0 if there were no errors. This parameter is passed uninitialized.</param>
<param name="tag2">Contains the tag for drawing operations that caused errors or 0 if there were no errors. This parameter is passed uninitialized.</param>
</member>
<member name="M:CRenderTarget.SaveDrawingState(ID2D1DrawingStateBlock*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2206">
<summary>
Saves the current drawing state to the specified ID2D1DrawingStateBlock.</summary> 
<param name="drawingStateBlock">When this method returns, contains the current drawing state of the render target. This parameter must be initialized before passing it to the method.</param>
</member>
<member name="M:CRenderTarget.RestoreDrawingState(ID2D1DrawingStateBlock*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2211">
<summary>
Sets the render target's drawing state to that of the specified ID2D1DrawingStateBlock.</summary> 
<param name="drawingStateBlock">The new drawing state of the render target.</param>
</member>
<member name="M:CRenderTarget.PushAxisAlignedClip(CD2DRectF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,D2D1_ANTIALIAS_MODE)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2216">
<summary>
Removes the last axis-aligned clip from the render target. After this method is called, the clip is no longer applied to subsequent drawing operations.</summary> 
<param name="rectClip">The size and position of the clipping area, in device-independent pixels.</param>
<param name="mode">The antialiasing mode that is used to draw the edges of clip rects that have subpixel boundaries, and to blend the clip with the scene contents. The blending is performed once when the PopAxisAlignedClip method is called, and does not apply to each primitive within the layer.</param>
</member>
<member name="M:CRenderTarget.PopAxisAlignedClip" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2222">
<summary>
Removes the last axis-aligned clip from the render target. After this method is called, the clip is no longer applied to subsequent drawing operations.</summary> 
</member>
<member name="M:CRenderTarget.VerifyResource(CD2DResource*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2227">
<summary>
Verifies CD2DResource object validity; creates the object if it didn't already exist.</summary>
<param name="pResource">Pointer to CD2DResource object.</param>
<returns> 
TRUE is object if valid; otherwise FALSE.</returns>
</member>
<member name="F:CRenderTarget.m_pRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2234">
<summary>
A pointer to an ID2D1RenderTarget object.
</summary>
</member>
<member name="F:CRenderTarget.m_lstResources" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2239">
<summary>
A list of pointers to CD2DResource objects.
</summary>
</member>
<member name="F:CRenderTarget.m_pTextFormatDefault" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2244">
<summary>
A pointer to CD2DTextFormat object that contains a default text format.
</summary>
</member>
<member name="T:CHwndRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2250">
<summary>
ID2D1HwndRenderTarget wrapper.
</summary>
</member>
<member name="M:CHwndRenderTarget.#ctor(HWND__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2258">
<summary>
Constructs a CHwndRenderTarget object from HWND.</summary>
<param name="hwnd">The HWND associated with this render target</param>
</member>
<member name="M:CHwndRenderTarget.Attach(ID2D1HwndRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2263">
<summary>
Attaches existing render target interface to the object</summary>
<param name="pTarget">Existing render target interface. Cannot be NULL</param>
</member>
<member name="M:CHwndRenderTarget.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2268">
<summary>
Detaches render target interface from the object</summary>
<returns> 
Pointer to detached render target interface.</returns>
</member>
<member name="M:CHwndRenderTarget.Create(HWND__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2274">
<summary>
Creates a render target associated with the window </summary> 
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE</returns>
<param name="hWnd">The HWND associated with this render target</param>
</member>
<member name="M:CHwndRenderTarget.ReCreate(HWND__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2280">
<summary>
Re-creates a render target associated with the window</summary> 
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="hWnd">The HWND associated with this render target</param>
</member>
<member name="M:CHwndRenderTarget.GetHwndRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2286">
<summary>
Returns ID2D1HwndRenderTarget interface.</summary>
<returns>
Pointer to an ID2D1HwndRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CHwndRenderTarget.op_Implicit~ID2D1HwndRenderTarget*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2292">
<summary>
Returns ID2D1HwndRenderTarget interface.</summary>
<returns>
Pointer to an ID2D1HwndRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CHwndRenderTarget.GetHwnd" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2298">
<summary>
Returns the HWND associated with this render target.</summary>
<returns>
The HWND associated with this render target.</returns>
</member>
<member name="M:CHwndRenderTarget.CheckWindowState" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2304">
<summary>
Indicates whether the HWND associated with this render target is occluded.</summary>
<returns>
A value that indicates whether the HWND associated with this render target is occluded.</returns>
</member>
<member name="M:CHwndRenderTarget.Resize(CD2DSizeU!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2310">
<summary>
Changes the size of the render target to the specified pixel size</summary> 
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="size">The new size of the render target in device pixels</param>
</member>
<member name="F:CHwndRenderTarget.m_pHwndRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2317">
<summary>
A pointer to an ID2D1HwndRenderTarget object.
</summary>
</member>
<member name="T:CDCRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2323">
<summary>
ID2D1DCRenderTarget wrapper.
</summary>
</member>
<member name="M:CDCRenderTarget.#ctor" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2331">
<summary>
Constructs a CDCRenderTarget object.</summary>
</member>
<member name="M:CDCRenderTarget.Attach(ID2D1DCRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2335">
<summary>
Attaches existing render target interface to the object</summary>
<param name="pTarget">Existing render target interface. Cannot be NULL</param>
</member>
<member name="M:CDCRenderTarget.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2340">
<summary>
Detaches render target interface from the object</summary>
<returns> 
Pointer to detached render target interface.</returns>
</member>
<member name="M:CDCRenderTarget.Create(D2D1_RENDER_TARGET_PROPERTIES!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2346">
<summary>
Creates a CDCRenderTarget.</summary>
<returns>
If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="props">The rendering mode, pixel format, remoting options, DPI information, and the minimum DirectX support required for hardware rendering.</param>
</member>
<member name="M:CDCRenderTarget.BindDC(CDC!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2353">
<summary>
Binds the render target to the device context to which it issues drawing commands</summary> 
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="dc">The device context to which the render target issues drawing commands</param>
<param name="rect">The dimensions of the handle to a device context (HDC) to which the render target is bound</param>
</member>
<member name="M:CDCRenderTarget.GetDCRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2360">
<summary>
Returns ID2D1DCRenderTarget interface</summary>
<returns> 
Pointer to an ID2D1DCRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CDCRenderTarget.op_Implicit~ID2D1DCRenderTarget*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2366">
<summary>
Returns ID2D1DCRenderTarget interface</summary>
<returns> 
Pointer to an ID2D1DCRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="F:CDCRenderTarget.m_pDCRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2373">
<summary>
A pointer to an ID2D1DCRenderTarget object.
</summary>
</member>
<member name="M:CBitmapRenderTarget.#ctor" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2386">
<summary>
Constructs a CBitmapRenderTarget object.</summary>
</member>
<member name="M:CBitmapRenderTarget.Attach(ID2D1BitmapRenderTarget*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2391">
<summary>
Attaches existing render target interface to the object</summary>
<param name="pTarget">Existing render target interface. Cannot be NULL</param>
</member>
<member name="M:CBitmapRenderTarget.Detach" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2396">
<summary>
Detaches render target interface from the object</summary>
<returns> 
Pointer to detached render target interface.</returns>
</member>
<member name="M:CBitmapRenderTarget.GetBitmapRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2402">
<summary>
Returns ID2D1BitmapRenderTarget interface</summary>
<returns> 
Pointer to an ID2D1BitmapRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CBitmapRenderTarget.op_Implicit~ID2D1BitmapRenderTarget*" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2408">
<summary>
Returns ID2D1BitmapRenderTarget interface</summary>
<returns> 
Pointer to an ID2D1BitmapRenderTarget interface or NULL if object is not initialized yet.</returns>
</member>
<member name="M:CBitmapRenderTarget.GetBitmap(CD2DBitmap*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2414">
<summary>
Retrieves the bitmap for this render target. The returned bitmap can be used for drawing operations. </summary>
<returns>If the method succeeds, it returns TRUE. Otherwise, it returns FALSE.</returns>
<param name="bitmap">When this method returns, contains the valid bitmap for this render target. This bitmap can be used for drawing operations.</param>
</member>
<member name="F:CBitmapRenderTarget.m_pBitmapRenderTarget" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxrendertarget.h" line="2421">
<summary>
A pointer to an ID2D1BitmapRenderTarget object.
</summary>
</member>
<member name="M:Gdiplus.Region.IsVisible(Gdiplus.PointF!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,Gdiplus.Graphics!System.Runtime.CompilerServices.IsConst*)" decl="false" source="c:\program files (x86)\windows kits\8.1\include\um\gdiplusregion.h" line="394">
Hit testing operations

</member>
<member name="M:CMFCToolBarImages.GetBitsPerPixel" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarimages.h" line="147">
<summary> Returns current resolution of underlined images.</summary>
<returns> An integer value representing the current resolution of underlined images, in bits per pixel (bpp).</returns>
</member>
<member name="M:CMFCToolBarImages.SmoothResize(System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarimages.h" line="222">
<summary> 
Smoothly resizes underlined images.</summary>
<param name="dblScale"> Scale ratio.</param>
<returns> TRUE if resize succeeds; otherwise FALSE.</returns>
</member>
<member name="M:CMFCToolBarImages.GetScale" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarimages.h" line="228">
<summary>
Returns current scale ratio of underlined images.</summary>
<returns> A value representing current scale ratio.</returns>
</member>
<member name="M:CMFCToolBarImages.IsScaled" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarimages.h" line="236">
<summary>
Tells whether the underlined images are scaled or not.</summary>
<returns> TRUE if underlined images are scaled; otherwise FALSE.</returns>
</member>
<member name="M:CMFCToolBarImages.ConvertTo32Bits(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarimages.h" line="244">
<summary>
Converts underlined bitmaps to 32 bpp images.</summary> 
<returns> TRUE if succeeds; otherwise FALSE.</returns>
<param name="clrTransparent">Specifies transparent color of underlined bitmaps.</param>
</member>
<member name="F:AFX_GLOBAL_DATA.clrActiveCaptionGradient" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="100">
<summary>
Specifies gradient color of active caption. Generally used for docking panes. </summary>
</member>
<member name="F:AFX_GLOBAL_DATA.clrInactiveCaptionGradient" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="103">
<summary>
Specifies gradient color of inactive active caption. Generally used for docking panes. </summary>
</member>
<member name="F:AFX_GLOBAL_DATA.bIsWindows7" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="154">
<summary>
Indicates whether the application is being executed under Windows 7 OS or higher</summary>
</member>
<member name="M:AFX_GLOBAL_DATA.GetShellAutohideBars" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="239">
<summary>
Determines positions of Shell auto hide bars.</summary>
<returns> An integer value with encoded flags that specify positions of auto hide bars.
It may combine the following values: AFX_AUTOHIDE_BOTTOM, AFX_AUTOHIDE_TOP, AFX_AUTOHIDE_LEFT, 
AFX_AUTOHIDE_RIGHT.</returns>
</member>
<member name="M:AFX_GLOBAL_DATA.ShellCreateItemFromParsingName(System.Char!System.Runtime.CompilerServices.IsConst*,IBindCtx*,_GUID!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Void**)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="295">
<summary>
Creates and initializes a Shell item object from a parsing name.</summary>
<param name="pszPath">[in] A pointer to a display name.</param> 
<param name="pbc">A pointer to a bind context that controls the parsing operation.</param> 
<param name="riid">A reference to an interface ID.</param> 
<param name="ppv">[out] When this function returns, contains the interface pointer requested in riid. This will typically be IShellItem or IShellItem2.</param> 
<returns>Returns S_OK if successful, or an error value otherwise. </returns>
</member>
<member name="M:AFX_GLOBAL_DATA.GetITaskbarList" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="305">
<summary>
Creates and stores in the global data a pointer to ITaskBarList interface.</summary>
<returns>A pointer to ITaskbarList interface if creation of a task bar list object succeeds, or NULL if creation fails or current
Operation System is less than Windows 7.</returns>
</member>
<member name="M:AFX_GLOBAL_DATA.GetITaskbarList3" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxglobals.h" line="311">
<summary>
Creates and stores in the global data a pointer to ITaskBarList3 interface.</summary>
<returns>A pointer to ITaskbarList3 interface if creation creation of a task bar list object succeeds, or NULL if creation fails or current
Operation System is less than Windows 7.</returns>
</member>
<member name="M:CMFCToolBar.SetLockedSizes(tagSIZE,tagSIZE,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbar.h" line="115">
<summary>
Sets the sizes of locked buttons and locked images on the toolbar. </summary>
<param name="sizeButton">Specifies the size of locked toolbar buttons. </param>
<param name="sizeImage">Specifies the size of locked toolbar images. </param>
<param name="bDontScale">Specifies whether to scale or not locked toolbar images in high DPI mode.</param>
</member>
<member name="F:CMFCToolBar.m_bDontScaleImages" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbar.h" line="446">
<summary> Specifies whether to scale or not toolbar images in high DPI mode.</summary>
</member>
<member name="F:CDockablePane.m_sizeDragSensitivity" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdockablepane.h" line="262">
how far the mouse is moved after NcLBtnDown before the bar becomes floating
</member>
<member name="F:CMFCBaseTabCtrl.m_bReadyToDetach" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxbasetabctrl.h" line="480">
detachable bars support
</member>
<member name="M:CMFCRibbonBaseElement.HasFocus" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxbaseribbonelement.h" line="361">
<summary>
Indicates whether the parent element has keyboard focus</summary>
<returns> 
TRUE if the ribbon element is focused; otherwise FALSE.</returns>
</member>
<member name="M:CMFCRibbonButtonsGroup.GetFocused" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbuttonsgroup.h" line="90">
<summary>
Returns a focused element. </summary>
<returns> A pointer to a focused element or NULL.</returns>
</member>
<member name="M:CMFCRibbonBar.LoadFromResource(System.UInt32,System.Char!System.Runtime.CompilerServices.IsConst*,HINSTANCE__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="156">
<summary>
Loads a Ribbon Bar from application resources.</summary>
<returns> TRUE if load succeeds; otherwise FALSE. </returns>
<param name="uiXMLResID">Specifies resource ID of XML string with Ribbon Bar information.</param>
<param name="lpszResType">Specifies type of the resource located at uiXMLResID.</param>
<param name="hInstance">Handle to the module whose executable file contains the resource. If hModule is NULL, the system loads the resource from the module that was used to create the current process.</param>
</member>
<member name="M:CMFCRibbonBar.LoadFromResource(System.Char!System.Runtime.CompilerServices.IsConst*,System.Char!System.Runtime.CompilerServices.IsConst*,HINSTANCE__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="163">
<summary>
Loads a Ribbon Bar from application resources.</summary>
<returns> TRUE if load succeeds; otherwise FALSE. </returns>
<param name="lpszXMLResID">Specifies resource ID (in string form) with Ribbon Bar information.</param>
<param name="lpszResType">Specifies type of the resource located at uiXMLResID.</param>
<param name="hInstance">Handle to the module whose executable file contains the resource. If hModule is NULL, the system loads the resource from the module that was used to create the current process.</param>
</member>
<member name="M:CMFCRibbonBar.LoadFromBuffer(System.Char!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="170">
<summary>
Loads a Ribbon Bar from application resources.</summary>
<returns> TRUE if load succeeds; otherwise FALSE. </returns>
<param name="lpszXMLBuffer">A buffer with XML string to load the Ribbon Bar from.</param>
</member>
<member name="M:CMFCRibbonBar.SetWindows7Look(System.Int32,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="178">
<summary>
Enable/disable ribbon Windows 7-style look (small rectangular application button)</summary>
<param name="bWindows7Look">TRUE - set Windows 7-style look; FALSE - otherwise.</param>
<param name="bRecalc">TRUE - recalculate the ribbon layout; FALSE - otherwise.</param>
</member>
<member name="M:CMFCRibbonBar.IsWindows7Look" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="184">
<summary>
Indicates whether the ribbon has Windows 7-style look (small rectangular application button)</summary>
<returns> 
TRUE if the ribbon has Windows 7-style look; otherwise FALSE.</returns>
</member>
<member name="M:CMFCRibbonBar.SaveToXMLFile(System.Char!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="295">
<summary> Saves the Ribbon Bar to XML file.
</summary>
<param name="lpszFilePath">Specifies the output file.</param>
<returns>TRUE if succeeds; othewise FALSE.</returns>
</member>
<member name="M:CMFCRibbonBar.SaveToXMLBuffer(System.Byte**)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="300">
<summary> Saves the Ribbon Bar to a buffer.
</summary>
<param name="ppBuffer">When this function returns, ppBuffer points to a buffer allocated by this method and 
containing Ribbon Bar information in XML format.</param>
<returns>TRUE if succeeds; othewise FALSE.</returns>
</member>
<member name="M:CMFCRibbonBar.GetFocused" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonbar.h" line="338">
<summary>
Returns a focused element. </summary>
<returns> A pointer to a focused element or NULL.</returns>
</member>
<member name="M:CMFCRibbonPanel.IsWindows7Look" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="149">
<summary>
Indicates whether the parent ribbon has Windows 7-style look (small rectangular application button)</summary>
<returns> 
TRUE if the parent ribbon has Windows 7-style look; otherwise FALSE.</returns>
</member>
<member name="M:CMFCRibbonPanel.GetVisibleElements(CArray&lt;CMFCRibbonBaseElement**,CMFCRibbonBaseElement**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="195">
<summary>
Obtains an array of visible elements.</summary>
<param name="arElements"> When the function returns this parameter contains an array of visible elements.</param>
</member>
<member name="M:CMFCRibbonPanel.GetFocused" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="203">
<summary>
Returns a focused element. </summary>
<returns> A pointer to a focused element or NULL.</returns>
</member>
<member name="M:CMFCRibbonPanel.SetFocused(CMFCRibbonBaseElement*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="208">
<summary>
Sets focus to the specified Ribbon element.</summary>
<param name="pNewFocus"> A pointer to a Ribbon element that receives focus.</param>
</member>
<member name="M:CMFCRibbonPanel.MakeGalleryItemVisible(CMFCRibbonBaseElement*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="215">
<summary> 
Scrolls the gallery to make the specified Ribbon element visible.</summary>
<param name="pItem"> A pointer to a Ribbon element to show.</param>
</member>
<member name="M:CMFCRibbonPanel.GetGalleryRect" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanel.h" line="219">
<summary> 
Returns a bounding rectangle of Gallery element.</summary> 
<returns> Size and position of Gallery element within this panel.</returns>
</member>
<member name="M:CMFCRibbonPanelMenuBar.GetFocused" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribbonpanelmenu.h" line="74">
<summary>
Returns a focused element. </summary>
<returns> A pointer to a focused element or NULL.</returns>
</member>
<member name="M:CMFCRibbonCategory.GetFirstVisibleElement" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="130">
<summary>
Obtain a first visible element that belong to the ribbon category</summary>
<returns> 
Pointer to the first visible element; may be NULL if category doesn't have any visible elements</returns>
</member>
<member name="M:CMFCRibbonCategory.GetLastVisibleElement" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="136">
<summary>
Obtain a last visible element that belong to the ribbon category</summary>
<returns> 
Pointer to the last visible element; may be NULL if category doesn't have any visible elements</returns>
</member>
<member name="M:CMFCRibbonCategory.GetFocused" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="169">
<summary>
Returns a focused element. </summary>
<returns> A pointer to a focused element or NULL if no elements are focused.</returns>
</member>
<member name="M:CMFCRibbonCategory.GetHighlighted" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="174">
<summary>
Returns a highlighted element. </summary>
<returns> A pointer to a highlighted element or NULL if no elements are highlighted.</returns>
</member>
<member name="M:CMFCRibbonCategory.IsWindows7Look" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="185">
<summary>
Indicates whether the parent ribbon has Windows 7-style look (small rectangular application button)</summary>
<returns> 
TRUE if the parent ribbon has Windows 7-style look; otherwise FALSE.</returns>
</member>
<member name="M:CMFCRibbonCategory.GetVisibleElements(CArray&lt;CMFCRibbonBaseElement**,CMFCRibbonBaseElement**&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="218">
<summary>
Obtain all visible elements that belong to the ribbon category</summary>
<param name="arElements">Array of all visible elements</param>
</member>
<member name="M:CMFCRibbonCategory.OnKey(System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncategory.h" line="246">
<summary>
Called by the framework when a user presses a keyboard button.</summary>
<param name="nChar">The virtual-key code for the key that a user pressed.</param>
</member>
<member name="M:CMFCRibbonFontComboBox.GetFontType" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncombobox.h" line="145">
<summary>
Returns which font types to display in the combo box. Valid options are DEVICE_FONTTYPE, RASTER_FONTTYPE, and TRUETYPE_FONTTYPE, or any bitwise combination thereof.</summary>
<returns> 
Font types ( see EnumFontFamProc in the Windows SDK documentation).</returns>
</member>
<member name="M:CMFCRibbonFontComboBox.GetCharSet" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncombobox.h" line="151">
<summary>
Returns the specified character set.</summary>
<returns> 
Characters set (see LOGFONT in the Windows SDK documentation).</returns>
</member>
<member name="M:CMFCRibbonFontComboBox.GetPitchAndFamily" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxribboncombobox.h" line="157">
<summary>
Returns the pitch and the family of the fonts that are displayed in the combo box.</summary>
<returns> 
Pitch and the family (see LOGFONT in the Windows SDK documentation).</returns>
</member>
<member name="M:CMFCEditBrowseCtrl.OnIllegalFileName(ATL.CStringT&lt;System.Char,StrTraitMFC&lt;System.Char,ATL.ChTraitsCRT{System.Char}&gt;&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxeditbrowsectrl.h" line="81">
<summary>
Called by the framework when an illegal file name was entered in the edit control.</summary>
<param name="strFileName">Specifies the illegal file name.</param>
<returns> Should return FALSE if this file name can't be passed further to the file dialog. In this case a focus set back to the edit control
and the user should continue editing. The default implementation displays a message box telling the user about illegal file name and returns FALSE.
You can override this method, correct the file name and return TRUE for further processing.</returns>
</member>
<member name="M:CMFCToolBarSystemMenuButton.GetSysMenuIcon" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxtoolbarsystemmenubutton.h" line="49">
Attributes:
</member>
<member name="M:CMFCAutoHideButton.HighlightButton(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxautohidebutton.h" line="44">
<summary>
Highlights auto hide button.</summary>
<param name="bHighlight">Specifies the new auto hide button state: TRUE - button is highlighted, FALSE- button is not highlighted.</param>
</member>
<member name="M:CMFCAutoHideButton.IsHighlighted" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxautohidebutton.h" line="48">
<summary>
Returns highlight state of auto hide button.</summary>
<returns> Returns TRUE if auto hide button is highlighted; otherwise FALSE.</returns>
</member>
<member name="M:CDockingManager.SetDockingMode(AFX_DOCK_TYPE,AFX_SMARTDOCK_THEME)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdockingmanager.h" line="291">
<summary>
Sets docking mode.</summary>
<param name="dockMode">Specifies a docking mode to set. It should be one of the following 
enumerated values: DT_IMMEDIATE, DT_STANDARD or combination of DT_IMMEDIATE and DT_SMART.</param>
<param name="theme">Specifies the theme to be used for smart docking markers. It can be 
one of the following enumerated values: AFX_SDT_DEFAULT, AFX_SDT_VS2005, AFX_SDT_VS2008.</param>
</member>
<member name="M:CDockingManager.GetSmartDockingTheme" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdockingmanager.h" line="302">
<summary>
A static method that returns a theme used to display smart docking markers.</summary>
<returns> 
Returns one of the following enumerated values: AFX_SDT_DEFAULT, AFX_SDT_VS2005, AFX_SDT_VS2008.</returns>
</member>
<member name="M:CMDIClientAreaWnd.FindTabWndByChild(HWND__*,System.Int32*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdiclientareawnd.h" line="131">
<summary>
Finds tab control containing the specified window.</summary>
<return> 
A valid pointer to tab control containing the specified window. 
It's NULL if the specified window is not found.</return>
<param name="hWndChild">A handle to window, which is contained in the resulting tab control.</param>
<param name="iIndex">When the function returns it contains an index of hWndChild in tab control.</param>
<remarks>
If window specified by hWndChild is found, iIndex contains index of this window in the tabbed group.</remarks>
</member>
<member name="M:CMDIClientAreaWnd.SetTaskbarTabOrder" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdiclientareawnd.h" line="155">
<summary>
Goes over all tabs and windows and sets proper tab order</summary>
</member>
<member name="M:CMDIClientAreaWnd.FindNextRegisteredWithTaskbarMDIChild(CMFCTabCtrl*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdiclientareawnd.h" line="159">
<summary>
Goes over all MDI children starting from the specified tab and returns first encountered MDI child registered with Windows 7 taskbar tabs.</summary>
<return>
Returns a valid pointer to CMDIChildWndEx if registered child is found, or NULL.</return>
<param name="pTabCtrl">A pointer to a tabbed window (tab control) where to look for registered MDI child. </param>
<param name="iStartFrom">Specifies the starting position for search within tab control.</param>
</member>
<member name="M:CMDIClientAreaWnd.FindNextRegisteredWithTaskbarMDIChild(CMDIChildWndEx*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdiclientareawnd.h" line="167">
<summary>
Finds a tabbed group containing the specified MDI child, then 
goes over all MDI children starting from the found tab and returns first encountered MDI child registered with Windows 7 taskbar tabs.</summary>
<return>
Returns a valid pointer to CMDIChildWndEx if registered child is found, or NULL.</return>
<param name="pOrgWnd">A valid pointer to an MDI child window, which specifies the starting window for search.</param>
</member>
<member name="F:CMDIChildWndEx.m_dwDefaultTaskbarTabPropertyFlags" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="67">
<summary>
A combination of flags, which is passed by the framework to the SetTaskbarTabProperties method,
when a tab (MDI child) is being registered with Windows 7 taskbar tabs.
The default combination is STPF_USEAPPTHUMBNAILWHENACTIVE | STPF_USEAPPPEEKWHENACTIVE.</summary>
</member>
<member name="M:CMDIChildWndEx.RegisterTaskbarTab(CMDIChildWndEx*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="133">
<summary>
Registers MDI child with Windows 7 taskbar tabs.</summary>
<param name="pWndBefore">A pointer to MDI child window whose thumbnail is inserted to the left of. 
This window must already be registered through RegisterTaskbarTab. If this value is NULL, the new thumbnail is added to the end of the list.</param>
</member>
<member name="M:CMDIChildWndEx.IsRegisteredWithTaskbarTabs" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="139">
<summary>
Returns TRUE if MDI child was successfully registered with Windows 7 taskbar tabs.</summary>
<returns>
TRUE if MDI child is registered with Windows 7 taskbar tabs; otherwise FALSE.</returns>
</member>
<member name="M:CMDIChildWndEx.InvalidateIconicBitmaps" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="145">
<summary>
Invalidates iconic bitmap representation of MDI child.</summary>
<remarks> Should be called when the live content or size of MDI child has changed</remarks>
<returns> Returns FALSE is Windows 7 taskbar support is disabled or the MDI child
is not registered with Windows 7 taskbar tabs; otherwise returns TRUE.</returns>
</member>
<member name="M:CMDIChildWndEx.IsTaskbarTabsSupportEnabled" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="152">
<summary>
Tells whether the MDI child can appear on Windows 7 taskbar tabs.</summary>
<remarks> Returns TRUE if MDI child can show on Windows 7 taskbar tabs.</remarks>
<returns> Returns TRUE if MDI child can show on Windows 7 taskbar tabs, 
or FALSE if MDI child can't be shown on Windows 7 taskbar tabs.</returns>
</member>
<member name="M:CMDIChildWndEx.SetTaskbarTabOrder(CMDIChildWndEx*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="159">
<summary>
Inserts MDI child before specified window on Windows 7 taskbar tabs.</summary>
<param name="pWndBefore">A pointer to MDI child window whose thumbnail is inserted to the left of. 
This window must already be registered through RegisterTaskbarTab. If this value is NULL, the new thumbnail is added to the end of the list.</param>
</member>
<member name="M:CMDIChildWndEx.SetTaskbarTabActive" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="165">
<summary>
Activates corresponding Windows 7 taskbar tab.</summary>
</member>
<member name="M:CMDIChildWndEx.SetTaskbarTabProperties(System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="169">
<summary>
Sets properties for a Windows 7 taskbar tab.</summary>
<param name="dwFlags">A combination of STPFLAG values. See ITaskbarList4::SetTabProperties for details.</param>
</member>
<member name="M:CMDIChildWndEx.UnregisterTaskbarTab(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="174">
<summary> 
Removes MDI child from Windows 7 taskbar tabs.</summary>
<param name="bCheckRegisteredMDIChildCount">Specifies whether this function needs to check the number of MDI children registered with MDI tabs.
If this number is 0, then this function removes clipping rectangle from application's taskbar thumbnail.</param>
</member>
<member name="M:CMDIChildWndEx.GetTabProxyWnd" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="180">
<summary> 
Returns tab proxy window actually registered with Windows 7 taskbar tabs.</summary>
<returns> A pointer to CMDITabProxyWnd object, which is registered with Windows 7 taskbar tabs.</returns>
</member>
<member name="M:CMDIChildWndEx.EnableTaskbarThumbnailClipRect(System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="185">
<summary> 
Enables or disables automatic selection of a portion of a window's client area to display 
as that window's thumbnail in the taskbar. </summary>
<param name="bEnable"> Specifies whether to enable (TRUE), or disable (FALSE) automatic selection of a portion of a window's client area to display.</param>
</member>
<member name="M:CMDIChildWndEx.IsTaskbarThumbnailClipRectEnabled" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="191">
<summary> 
Tells whether automatic selection of a portion of a window's client area to display 
as that window's thumbnail in the taskbar is enabled or disabled. </summary>
<returns>
Returns TRUE if automatic selection of a portion of a window's client area to display is enabled; otherwise FALSE.</returns>
</member>
<member name="M:CMDIChildWndEx.UpdateTaskbarTabIcon(HICON__*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="211">
<summary>
Updates Windows 7 taskbar tab icon.</summary>
<param name="hIcon"> A handle to an icon to display on Windows 7 taskbar tab.</param>
</member>
<member name="M:CMDIChildWndEx.CanShowOnTaskBarTabs" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="215">
<summary> 
Tells the framework whether this MDI child can be displayed on Windows 7 taskbar tabs.</summary>
<remarks>
Override this method in a derived class and return FALSE to disable appearance of this MDI child
on Windows 7 taskbar tabs.</remarks>
<returns>
Should return TRUE if the content of MDI child can be displayed on Windows 7 taskbar thumbnails.</returns>
</member>
<member name="M:CMDIChildWndEx.OnGetIconicThumbnail(System.Int32,System.Int32)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="224">
<summary> 
Called by the framework when it needs to obtain a bitmap for iconic thumbnail of MDI child.</summary>
<returns> 
If processed, should return a handle to a valid 32bpp bitmap, otherwise NULL.</returns>
<remarks>
Override this method in a derived class an return a valid 32bpp bitmap for iconic thumbnail of MDI child.
This method is called only when MDI child is displayed on Windows 7 taskbar tabs.
If you return NULL, MFC calls default handlers and obtains bitmaps using PrintClient.</remarks>
<param name="nWidth"> Specifies the width of required bitmap.</param>
<param name="nHeight"> Specifies the height of required bitmap.</param>
</member>
<member name="M:CMDIChildWndEx.OnGetIconicLivePreviewBitmap(System.Int32,CPoint*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="241">
<summary> 
Called by the framework when it needs to obtain a bitmap for live preview of MDI child.</summary>
<returns> 
If processed, should return a handle to a valid 32bpp bitmap, otherwise NULL.</returns>
<remarks>
Override this method in a derived class an return a valid 32bpp bitmap for live preview of MDI child.
This method is called only when MDI child is displayed on Windows 7 taskbar tabs.
If you return NULL, MFC calls default handlers and obtains bitmaps using PrintClient or PrintWindow.</remarks>
<param name="bIsMDIChildActive"> This parameter is TRUE if the bitmap is requested for MDI child, which is currently active and the main window is not minimized. 
The default processing in this case takes a snapshot of the main window.</param>
<param name="ptLocation"> Specifies the location of bitmap in the main (top level) window client coordinated. This point should be provided by callee.</param>
</member>
<member name="M:CMDIChildWndEx.OnTaskbarTabThumbnailStretch(HBITMAP__*,CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,HBITMAP__*,CRect!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="259">
<summary> 
Called by the framework when it needs to stretch a bitmap for Windows 7 taskbar tab thumbnail preview of MDI child.</summary>
<returns>Should return TRUE if overridden and processed in a derived class.</returns> 
<param name="hBmpDst">A handle to a destination bitmap.</param>
<param name="rectDst">Specifies the destination rectangle.</param>
<param name="hBmpSrc">A handle to a source bitmap.</param>
<param name="rectSrc">Specifies the source rectangle.</param>
</member>
<member name="M:CMDIChildWndEx.GetTaskbarPreviewWnd" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="268">
<summary> 
Called by the framework when it needs to obtain a child window (usually a view or splitter window) to be displayed on Windows 7 taskbar tab thumbnail.</summary>
<returns>
Should return a valid pointer to a CWnd object, whose preview should be displayed on 
Windows 7 taskbar tab related to this MDI child. The default implementation returns
a child window of this MDI child with AFX_IDW_PANE_FIRST control ID (which is usually a CView-derived class).</returns>
</member>
<member name="M:CMDIChildWndEx.OnPressTaskbarThmbnailCloseButton" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="276">
<summary> 
Called by the framework when the user presses close button on Taskbar tab thumbnail..</summary>
</member>
<member name="M:CMDIChildWndEx.OnTaskbarTabThumbnailActivate(System.UInt32,CWnd*,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="280">
<summary> 
Called by the framework when the Taskbar tab thumbnail should process WM_ACTIVATE message.</summary>
<remarks>
The default implementation activates related MDI child frame. </remarks>
<param name="nState">Specifies whether the CWnd is being activated or deactivated.</param>
<param name="pWndOther">Pointer to the CWnd being activated or deactivated. The pointer can be NULL, and it may be temporary.</param>
<param name="bMinimized">Specifies the minimized state of the CWnd being activated or deactivated. A value of TRUE indicates the window is minimized.</param>
</member>
<member name="M:CMDIChildWndEx.OnTaskbarTabThumbnailMouseActivate(CWnd*,System.UInt32,System.UInt32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="289">
<summary> 
Called by the framework when the Taskbar tab thumbnail should process WM_MOUSEACTIVATE message.</summary>
<remarks>
The default implementation activates related MDI child frame. </remarks>
<param name="pDesktopWnd">Specifies a pointer to the top-level parent window of the window being activated. The pointer may be temporary and should not be stored.</param>
<param name="nHitTest">Specifies the hit-test area code. A hit test is a test that determines the location of the cursor.</param>
<param name="message">Specifies the mouse message number.</param>
</member>
<member name="M:CMDIChildWndEx.GetTaskbarThumbnailClipRect" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="298">
<summary> 
Called by the framework when it needs to select a portion of a window's client area to display 
as that window's thumbnail in the taskbar.</summary>
<returns> A rectangle in windows coordinates. This rectangle will be mapped to the client area of top level frame. 
The rectangle should be empty to clear the clipping rectangle</returns>
</member>
<member name="M:CMDIChildWndEx.SetTaskbarThumbnailClipRect(CRect)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="317">
<summary>
Called internally by the framework to set clipping rectangle to select a portion of a window's client area to display 
as that window's thumbnail in the taskbar.</summary>
<param name="rect">Specifies the new clipping rectangle. If rectangle is empty or null, the clipping is removed.</param>
<returns>Returns TRUE if the functions succeeds; otherwise FALSE.</returns>
</member>
<member name="M:CMDIChildWndEx.ActivateTopLevelFrame" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="359">
<summary>
Called internally by the framework to activate top level frame when the application should be activated 
from a taskbar tab.</summary>
</member>
<member name="M:CMDIChildWndEx.SetTaskbarTabText(System.Char!System.Runtime.CompilerServices.IsConst*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxmdichildwndex.h" line="364">
<summary>
Called internally by the framework to set text of taskbar tab.</summary>
<param name="lpcszDefaultText"> Specifies a text to set. Current implementation adds this text to application name if the MDI child has FWS_ADDTOTITLE style. </param>
</member>
<member name="M:AfxRegCreateKey(HKEY__*,System.Char!System.Runtime.CompilerServices.IsConst*,HKEY__**,ATL.CAtlTransactionManager*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxpriv.h" line="818">
<summary>
Creates the specified registry key.</summary>
<returns> 
If the function succeeds, the return value is ERROR_SUCCESS. If the function fails, the return value is a nonzero error code defined in Winerror.h</returns>
<param name="hKey">A handle to an open registry key.</param>
<param name="lpSubKey">The name of a key that this function opens or creates.</param>
<param name="phkResult">A pointer to a variable that receives a handle to the opened or created key.</param>
<param name="pTM">Pointer to CAtlTransactionManager object</param>
</member>
<member name="M:AfxRegOpenKey(HKEY__*,System.Char!System.Runtime.CompilerServices.IsConst*,HKEY__**,ATL.CAtlTransactionManager*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxpriv.h" line="828">
<summary>
Opens the specified registry key.</summary>
<returns> 
If the function succeeds, the return value is ERROR_SUCCESS. If the function fails, the return value is a nonzero error code defined in Winerror.h</returns>
<param name="hKey">A handle to an open registry key.</param>
<param name="lpSubKey">The name of a key that this function opens or creates.</param>
<param name="phkResult">A pointer to a variable that receives a handle to the created key.</param>
<param name="pTM">Pointer to CAtlTransactionManager object</param>
</member>
<member name="M:AfxRegOpenKeyEx(HKEY__*,System.Char!System.Runtime.CompilerServices.IsConst*,System.UInt32!System.Runtime.CompilerServices.IsLong,System.UInt32!System.Runtime.CompilerServices.IsLong,HKEY__**,ATL.CAtlTransactionManager*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxpriv.h" line="838">
<summary>
Opens the specified registry key.</summary>
<returns> 
If the function succeeds, the return value is ERROR_SUCCESS. If the function fails, the return value is a nonzero error code defined in Winerror.h</returns>
<param name="hKey">A handle to an open registry key.</param>
<param name="lpSubKey">The name of a key that this function opens or creates.</param>
<param name="ulOptions">This parameter is reserved and must be zero.</param>
<param name="samDesired">A mask that specifies the desired access rights to the key.</param>
<param name="phkResult">A pointer to a variable that receives a handle to the openedkey.</param>
<param name="pTM">Pointer to CAtlTransactionManager object</param>
</member>
<member name="M:AfxRegDeleteKey(HKEY__*,System.Char!System.Runtime.CompilerServices.IsConst*,ATL.CAtlTransactionManager*)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxpriv.h" line="853">
<summary>
Deletes the specified registry key.</summary>
<returns> 
If the function succeeds, the return value is ERROR_SUCCESS. If the function fails, the return value is a nonzero error code defined in Winerror.h</returns>
<param name="hKey">A handle to an open registry key.</param>
<param name="lpSubKey">The name of the key to be deleted.</param>
<param name="pTM">Pointer to CAtlTransactionManager object</param>
</member>
<member name="M:CDrawingManager.DrawRotated(CRect,CDC*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Int32)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdrawmanager.h" line="74">
<summary>
Rotates a source DC content inside the given rectangle by +/- 90 degrees</summary>
<param name="rectDest">Destination rectangle</param>
<param name="dcSrc">The source device content.</param>
<param name="bClockWise">TRUE - rotate +90 degrees, FALSE - 90.</param>
</member>
<member name="M:CDrawingManager.CreateBitmap_32(CSize!System.Runtime.CompilerServices.IsConst*!System.Runtime.CompilerServices.IsImplicitlyDereferenced,System.Void**)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdrawmanager.h" line="101">
<summary> Creates an empty 32 bit bitmap.</summary>
<returns> A handle to created bitmap, or NULL, if creation fails.</returns>
<param name="size">Specifies bitmap size.</param>
<param name="pBits">When the function returns contains a pointer to bitmap bits.</param>
</member>
<member name="M:CDrawingManager.CreateBitmap_32(HBITMAP__*,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxdrawmanager.h" line="107">
<summary> Creates a 32 bit bitmap from the specified bitmap.</summary>
<returns> A handle to created bitmap, or NULL, if creation fails.</returns>
<param name="bitmap"> A handle to the original bitmap.</param>
<param name="clrTransparent"> An RGB value specifying transparent color of the original bitmap.</param>
</member>
<member name="M:CMFCControlRenderer.SmoothResize(System.Double)" decl="true" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxcontrolrenderer.h" line="67">
<summary> 
Smoothly resizes images.</summary>
<param name="dblScale"> Scale ratio.</param>
<returns> TRUE if resize succeeds; otherwise FALSE.</returns>
</member>
<member name="M:CMFCControlRenderer.IsScaled" decl="false" source="d:\program files (x86)\microsoft visual studio 14.0\vc\atlmfc\include\afxcontrolrenderer.h" line="105">
<summary>
Tells whether this control renderer works with scaled (resized) images.</summary>
<returns>Returns TRUE if this control renderer works with resized (scaled) images.</returns>
</member>
</members>
</doc>